import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:url_launcher/url_launcher.dart';

class PoiCard extends ConsumerWidget {
  const PoiCard({required this.poi, super.key});
  final POI poi;

  Future<void> _openGoogleMaps(POI poi) async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=${poi.lat},${poi.lng}&query_place_id=${poi.placeId}';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              poi.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            if (poi.address != null)
              Text(poi.address!, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            Row(
              children: [
                if (poi.rating != null)
                  Text('⭐ ${poi.rating}', style: const TextStyle(fontSize: 14)),
                const SizedBox(width: 12),
                if (poi.priceLevel != null)
                  Text(
                    r'$' * poi.priceLevel!,
                    style: const TextStyle(fontSize: 14),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            if (poi.openingHours != null && poi.openingHours!.isNotEmpty)
              ExpansionTile(
                title: const Text('Opening Hours'),
                children: poi.openingHours!
                    .map((e) => ListTile(title: Text(e)))
                    .toList(),
              ),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: () => _openGoogleMaps(poi),
              icon: const Icon(Icons.directions),
              label: const Text('Directions'),
            ),
          ],
        ),
      ),
    );
  }
}
