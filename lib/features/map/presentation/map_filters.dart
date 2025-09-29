import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:travel_copilot/features/poi/presentation/poi_providers.dart';

/// Simple map filter state.
class MapFilters {
  const MapFilters({
    this.maxPriceLevel,
    this.minRating,
    this.familyFriendly = false,
    this.lessTouristy = false,
  });

  final int? maxPriceLevel; // 1..3
  final double? minRating; // 0..5
  final bool familyFriendly;
  final bool lessTouristy;

  MapFilters copyWith({
    int? maxPriceLevel,
    double? minRating,
    bool? familyFriendly,
    bool? lessTouristy,
  }) {
    return MapFilters(
      maxPriceLevel: maxPriceLevel ?? this.maxPriceLevel,
      minRating: minRating ?? this.minRating,
      familyFriendly: familyFriendly ?? this.familyFriendly,
      lessTouristy: lessTouristy ?? this.lessTouristy,
    );
  }
}

final mapFiltersProvider = StateProvider<MapFilters>((_) => const MapFilters());

/// POIs filtered by [mapFiltersProvider].
final filteredPoisProvider =
    FutureProvider.family<List<POI>, Map<String, dynamic>>((ref, args) async {
  final all = await ref.watch(poiListProvider(args).future);
  final f = ref.watch(mapFiltersProvider);

  return all.where((p) {
    if (f.maxPriceLevel != null && (p.priceLevel ?? 0) > f.maxPriceLevel!) {
      return false;
    }
    if (f.minRating != null && (p.rating ?? 0) < f.minRating!) return false;

    // Heuristics for flags
    if (f.familyFriendly &&
        p.categories.any((c) => c.toLowerCase().contains('bar'))) {
      return false;
    }
    if (f.lessTouristy && p.name.toLowerCase().contains('museum')) {
      return false;
    }

    return true;
  }).toList();
});
