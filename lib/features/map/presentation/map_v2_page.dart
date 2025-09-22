import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as ll;

import 'package:travel_copilot/core/models/geo.dart' as appgeo;
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:travel_copilot/features/poi/presentation/poi_providers.dart';

/// ---------- SAFE ACCESSORS FOR OPTIONAL/UNKNOWN FIELDS ----------
extension _POISafeAccess on POI {
  int? get priceLevelSafe {
    try {
      final v = (this as dynamic).priceLevel;
      if (v is int) return v;
      if (v is num) return v.toInt();
    } catch (_) {}
    return null;
  }

  double get ratingSafe {
    try {
      final v = (this as dynamic).rating;
      if (v is num) return v.toDouble();
    } catch (_) {}
    return 5.0; // neutral default (won't filter out)
  }

  bool get familyFriendlySafe {
    try {
      final v = (this as dynamic).familyFriendly;
      if (v is bool) return v;
    } catch (_) {}
    return false;
  }

  double get popularitySafe {
    try {
      final v = (this as dynamic).popularity;
      if (v is num) return v.toDouble();
    } catch (_) {}
    return 50.0; // mid value
  }
}

/// Simple in-memory category filters (chips)
final selectedCategoriesProvider =
    StateProvider<Set<String>>((_) => <String>{});

/// Text query for map search (keep if you already added it)
final mapQueryProvider = StateProvider<String>((_) => '');

/// Price filter: set of price levels 1..4 ($..$$$$)
final mapPriceFilterProvider = StateProvider<Set<int>>((_) => <int>{});

/// Minimum rating 0..5
final mapMinRatingProvider = StateProvider<double>((_) => 0.0);

/// Max distance in km (null/large => no distance limit)
final mapMaxDistanceKmProvider = StateProvider<double?>((_) => null);

/// Family-friendly only toggle
final mapFamilyOnlyProvider = StateProvider<bool>((_) => false);

/// Less touristy toggle
final mapLessTouristyProvider = StateProvider<bool>((_) => false);

class MapV2Page extends ConsumerWidget {
  const MapV2Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final poiAsync = ref.watch(allPoisProvider);
    final selected = ref.watch(selectedCategoriesProvider);
    const center = ll.LatLng(44.4268, 26.1025); // Bucharest

    return Scaffold(
      appBar: AppBar(title: const Text('Map')),
      body: poiAsync.when(
        loading: () =>
            const Center(child: CircularProgressIndicator.adaptive()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (pois) {
          // Categories
          final categories = (pois.map((p) => p.category).toSet()
                ..removeWhere((e) => e.isEmpty))
              .toList()
            ..sort();

          // Read filters
          final query = ref.watch(mapQueryProvider).trim().toLowerCase();
          final selectedPrices = ref.watch(mapPriceFilterProvider);
          final minRating = ref.watch(mapMinRatingProvider);
          final maxKm = ref.watch(mapMaxDistanceKmProvider);
          final familyOnly = ref.watch(mapFamilyOnlyProvider);
          final lessTouristy = ref.watch(mapLessTouristyProvider);

          // Distance helper
          double haversineKm(ll.LatLng a, ll.LatLng b) {
            const r = 6371.0; // km
            final dLat = (b.latitude - a.latitude) * (math.pi / 180.0);
            final dLng = (b.longitude - a.longitude) * (math.pi / 180.0);
            final la1 = a.latitude * (math.pi / 180.0);
            final la2 = b.latitude * (math.pi / 180.0);
            final h = (1 - math.cos(dLat)) / 2 +
                ((1 - math.cos(dLng)) / 2) * (math.cos(la1) * math.cos(la2));
            final clamped = math.min(1.0, math.max(0.0, h));
            return 2 * r * math.asin(math.sqrt(clamped));
          }

          bool matches(POI p) {
            // Category
            if (selected.isNotEmpty && !selected.contains(p.category)) {
              return false;
            }

            // Name query
            if (query.isNotEmpty && !p.name.toLowerCase().contains(query)) {
              return false;
            }

            // Price
            final priceLevel = p.priceLevelSafe;
            if (selectedPrices.isNotEmpty) {
              if (priceLevel == null || !selectedPrices.contains(priceLevel)) {
                return false;
              }
            }

            // Rating
            if (p.ratingSafe < minRating) return false;

            // Family-friendly
            if (familyOnly && !p.familyFriendlySafe) return false;

            // Less touristy
            if (lessTouristy && p.popularitySafe > 50.0) return false;

            // Distance (from fixed center for now)
            final pos = p.coords;
            final km = haversineKm(
              center,
              ll.LatLng(pos.lat.toDouble(), pos.lng.toDouble()),
            );
            if (maxKm != null && km > maxKm) return false;

            return true;
          }

          // Apply all filters
          final filtered = pois.where(matches).toList();

          // Build markers
          final markers = filtered.map((p) {
            final appgeo.LatLng pos = p.coords;
            final lat = pos.lat.toDouble();
            final lng = pos.lng.toDouble();

            return Marker(
              point: ll.LatLng(lat, lng),
              width: 44,
              height: 44,
              child: Tooltip(
                message: p.name,
                child: IconButton(
                  icon: const Icon(Icons.place, size: 28),
                  onPressed: () {
                    showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      builder: (_) => _POIQuickSheet(poi: p),
                    );
                  },
                ),
              ),
            );
          }).toList();

          // Overlay chips ABOVE the map
          return Stack(
            children: [
              FlutterMap(
                options: const MapOptions(
                  initialCenter: center,
                  initialZoom: 13,
                  interactionOptions:
                      InteractionOptions(flags: ~InteractiveFlag.rotate),
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.travel.copilot',
                  ),
                  MarkerLayer(markers: markers),
                ],
              ),
              // Top chip row
              Positioned(
                top: 12,
                left: 12,
                right: 12,
                child: _CategoryChips(categories: categories),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (_) => const _MapFiltersSheet(),
          );
        },
        label: const Text('Filters'),
        icon: const Icon(Icons.tune),
      ),
    );
  }
}

class _CategoryChips extends ConsumerWidget {
  const _CategoryChips({required this.categories});
  final List<String> categories;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedCategoriesProvider);
    if (categories.isEmpty) return const SizedBox.shrink();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const _ChipLabel(text: 'Categories:'),
          const SizedBox(width: 6),
          ...categories.map((c) {
            final isOn = selected.contains(c);
            return Padding(
              padding: const EdgeInsets.only(right: 6),
              child: FilterChip(
                label: Text(c),
                selected: isOn,
                onSelected: (val) {
                  final set = {...selected};
                  if (val) {
                    set.add(c);
                  } else {
                    set.remove(c);
                  }
                  ref.read(selectedCategoriesProvider.notifier).state = set;
                },
              ),
            );
          }),
          if (selected.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: TextButton.icon(
                onPressed: () => ref
                    .read(selectedCategoriesProvider.notifier)
                    .state = <String>{},
                icon: const Icon(Icons.clear),
                label: const Text('Clear'),
              ),
            ),
        ],
      ),
    );
  }
}

class _ChipLabel extends StatelessWidget {
  const _ChipLabel({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
      ),
      child: Text(text, style: Theme.of(context).textTheme.labelLarge),
    );
  }
}

/// ---- Filters bottom sheet ----
class _MapFiltersSheet extends ConsumerWidget {
  const _MapFiltersSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prices = ref.watch(mapPriceFilterProvider);
    final minRating = ref.watch(mapMinRatingProvider);
    final maxKm = ref.watch(mapMaxDistanceKmProvider);
    final familyOnly = ref.watch(mapFamilyOnlyProvider);
    final lessTouristy = ref.watch(mapLessTouristyProvider);

    void close() => Navigator.of(context).pop();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 36,
                height: 4,
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
            ),
            Text('Filters',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 12),

            // Price
            Text('Price', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: List.generate(4, (i) {
                final level = i + 1;
                final label = '\$' * level;
                final selected = prices.contains(level);
                return FilterChip(
                  label: Text(label),
                  selected: selected,
                  onSelected: (on) {
                    final next = {...prices};
                    on ? next.add(level) : next.remove(level);
                    ref.read(mapPriceFilterProvider.notifier).state = next;
                  },
                );
              }),
            ),
            const SizedBox(height: 16),

            // Rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Minimum rating',
                    style: Theme.of(context).textTheme.labelLarge),
                Text(minRating.toStringAsFixed(1)),
              ],
            ),
            Slider(
              min: 0,
              max: 5,
              divisions: 10,
              value: minRating,
              label: minRating.toStringAsFixed(1),
              onChanged: (v) =>
                  ref.read(mapMinRatingProvider.notifier).state = v,
            ),
            const SizedBox(height: 8),

            // Distance
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Max distance (km)',
                    style: Theme.of(context).textTheme.labelLarge),
                Text(maxKm == null ? 'Any' : maxKm!.toStringAsFixed(0)),
              ],
            ),
            Slider(
              min: 1,
              max: 50,
              divisions: 49,
              value: (maxKm ?? 50),
              onChanged: (v) => ref
                  .read(mapMaxDistanceKmProvider.notifier)
                  .state = v >= 50 ? null : v,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Drag to 50 for “Any”.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(height: 8),

            // Toggles
            SwitchListTile.adaptive(
              contentPadding: EdgeInsets.zero,
              title: const Text('Family friendly'),
              value: familyOnly,
              onChanged: (v) =>
                  ref.read(mapFamilyOnlyProvider.notifier).state = v,
            ),
            SwitchListTile.adaptive(
              contentPadding: EdgeInsets.zero,
              title: const Text('Less touristy'),
              subtitle: const Text('Prioritize hidden gems'),
              value: lessTouristy,
              onChanged: (v) =>
                  ref.read(mapLessTouristyProvider.notifier).state = v,
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                TextButton(
                  onPressed: () {
                    ref.read(mapPriceFilterProvider.notifier).state = {};
                    ref.read(mapMinRatingProvider.notifier).state = 0;
                    ref.read(mapMaxDistanceKmProvider.notifier).state = null;
                    ref.read(mapFamilyOnlyProvider.notifier).state = false;
                    ref.read(mapLessTouristyProvider.notifier).state = false;
                    close();
                  },
                  child: const Text('Reset'),
                ),
                const Spacer(),
                FilledButton.icon(
                  onPressed: close,
                  icon: const Icon(Icons.check),
                  label: const Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// ---- Bottom sheet with quick POI actions ----
class _POIQuickSheet extends StatelessWidget {
  const _POIQuickSheet({required this.poi});
  final POI poi;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
            ),
            Text(
              poi.name,
              style: theme.textTheme.titleLarge,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _pill(icon: Icons.category, text: poi.category),
                if (poi.ratingSafe != 5.0 ||
                    true) // show if present; ok to show default
                  _pill(
                    icon: Icons.star,
                    text: poi.ratingSafe.toStringAsFixed(1),
                  ),
                if (poi.priceLevelSafe != null)
                  _pill(
                    icon: Icons.price_change,
                    text: _priceSymbols(poi.priceLevelSafe!),
                  ),
              ],
            ),
            if (poi.address.isNotEmpty) ...[
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.location_on_outlined, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(poi.address, style: theme.textTheme.bodyMedium),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 16),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(child: Text('Photo (mock)')),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Details (mock)')),
                      );
                    },
                    icon: const Icon(Icons.info_outline),
                    label: const Text('Details'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Navigate (mock)')),
                      );
                    },
                    icon: const Icon(Icons.navigation),
                    label: const Text('Navigate'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _pill({required IconData icon, required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: Colors.black12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16),
          const SizedBox(width: 6),
          Text(text),
        ],
      ),
    );
  }

  String _priceSymbols(int level) {
    switch (level) {
      case 1:
        return r'$';
      case 2:
        return r'$$';
      case 3:
        return r'$$$';
      case 4:
        return r'$$$$';
      default:
        return r'$';
    }
  }
}
