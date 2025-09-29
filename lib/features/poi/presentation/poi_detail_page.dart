import 'package:flutter/material.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';

class PoiDetailPage extends StatelessWidget {

  const PoiDetailPage({required this.poi, super.key});
  final POI poi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(poi.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(poi.name,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            if (poi.address != null) Text(poi.address!),
            const SizedBox(height: 12),
            if (poi.rating != null)
              Text('⭐ ${poi.rating}', style: const TextStyle(fontSize: 16)),
            if (poi.priceLevel != null)
              Text("Price Level: ${r"$" * poi.priceLevel!}"),
            const SizedBox(height: 12),
            Text('Reason: ${poi.reason}'),
            Text('Budget Hint: ${poi.budgetHint}'),
            Text('Crowd Hint: ${poi.crowdHint}'),
            const SizedBox(height: 12),
            if (poi.openingHours != null && poi.openingHours!.isNotEmpty) ...[
              const Text('Opening Hours:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ...poi.openingHours!.map(Text.new),
            ]
          ],
        ),
      ),
    );
  }
}
