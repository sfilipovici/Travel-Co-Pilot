import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:url_launcher/url_launcher.dart';

class ActivityCard extends ConsumerWidget {
  const ActivityCard({required this.block, super.key});
  final TripBlock block;

  Future<void> _openGoogleMaps(TripBlock block) async {
    if (block.coords == null || block.placeId == null) return;
    final url =
        'https://www.google.com/maps/dir/?api=1&destination=${block.coords!.lat},${block.coords!.lng}&destination_place_id=${block.placeId}';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 🌀 Loading state: if title is empty, show placeholder
    if (block.title.isEmpty) {
      return Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: const [
              CircularProgressIndicator(strokeWidth: 2),
              SizedBox(width: 12),
              Text("Loading activity..."),
            ],
          ),
        ),
      );
    }

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              block.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            if (block.address != null)
              Text(block.address!, style: const TextStyle(fontSize: 14)),
            if (block.time != null)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  "⏰ ${block.time!}",
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            const SizedBox(height: 8),
            Row(
              children: [
                if (block.rating != null)
                  Text(
                    '⭐ ${block.rating}',
                    style: const TextStyle(fontSize: 14),
                  ),
                const SizedBox(width: 12),
                if (block.priceLevel != null)
                  Text(
                    r'$' * block.priceLevel!,
                    style: const TextStyle(fontSize: 14),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            if (block.openingHours != null && block.openingHours!.isNotEmpty)
              ExpansionTile(
                title: const Text('Opening Hours'),
                children: block.openingHours!
                    .map((e) => ListTile(title: Text(e)))
                    .toList(),
              ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (block.coords != null && block.placeId != null)
                  TextButton.icon(
                    onPressed: () => _openGoogleMaps(block),
                    icon: const Icon(Icons.directions),
                    label: const Text('Directions'),
                  ),
                TextButton.icon(
                  onPressed: () {
                    // TODO: Hook up Supabase favorites later
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Save feature coming soon')),
                    );
                  },
                  icon: const Icon(Icons.favorite_border),
                  label: const Text('Save'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
