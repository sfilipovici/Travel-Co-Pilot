import 'package:flutter/material.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';
import 'package:url_launcher/url_launcher.dart';

class PoiDetailPage extends StatelessWidget {
  const PoiDetailPage({required this.poi, super.key});
  final POI poi;

  Future<void> _openDirections() async {
    if (poi.mapUrl != null) {
      final uri = Uri.parse(poi.mapUrl!);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        return;
      }
    }

    if (poi.lat != 0 && poi.lng != 0) {
      final googleMapsUrl = Uri.parse(
        "https://www.google.com/maps/dir/?api=1&destination=${poi.lat},${poi.lng}",
      );
      if (await canLaunchUrl(googleMapsUrl)) {
        await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
        return;
      }
    }

    if (poi.address != null) {
      final encoded = Uri.encodeComponent(poi.address!);
      final googleMapsUrl = Uri.parse(
        "https://www.google.com/maps/dir/?api=1&destination=$encoded",
      );
      await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(poi.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              poi.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            if (poi.address != null) Text(poi.address!),
            const SizedBox(height: 12),
            if (poi.rating != null)
              Text('⭐ ${poi.rating}', style: const TextStyle(fontSize: 16)),
            if (poi.priceLevel != null)
              Text("Price Level: ${r"\$" * poi.priceLevel!}"),
            const SizedBox(height: 12),
            Text('Reason: ${poi.reason}'),
            Text('Budget Hint: ${poi.budgetHint}'),
            Text('Crowd Hint: ${poi.crowdHint}'),
            const SizedBox(height: 12),
            if (poi.openingHours != null && poi.openingHours!.isNotEmpty) ...[
              const Text(
                'Opening Hours:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ...poi.openingHours!.map(Text.new),
            ],
            const SizedBox(height: 20),
            if (poi.mapUrl != null ||
                (poi.lat != 0 && poi.lng != 0) ||
                poi.address != null)
              ElevatedButton.icon(
                onPressed: _openDirections,
                icon: const Icon(Icons.directions),
                label: const Text("Get Directions"),
              ),
          ],
        ),
      ),
    );
  }
}
