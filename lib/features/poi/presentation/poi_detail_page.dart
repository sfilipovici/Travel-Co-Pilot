import 'package:flutter/material.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:url_launcher/url_launcher.dart';

class PoiDetailPage extends StatelessWidget {
  const PoiDetailPage({super.key, required this.block});

  final TripBlock block;

  Future<void> _openMaps() async {
    final lat = block.coords.lat;
    final lng = block.coords.lng;
    final googleUrl = Uri.parse(
        'https://www.google.com/maps/dir/?api=1&destination=$lat,$lng');

    if (await canLaunchUrl(googleUrl)) {
      await launchUrl(googleUrl, mode: LaunchMode.externalApplication);
    } else {
      throw Exception('Could not launch maps');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(block.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // Title
            Text(block.title, style: theme.textTheme.headlineSmall),
            const SizedBox(height: 8),

            // Time + budget + crowd
            Wrap(
              spacing: 12,
              children: [
                Text(block.time, style: theme.textTheme.bodyMedium),
                if (block.budgetHint.isNotEmpty)
                  Text('Budget: ${block.budgetHint}',
                      style: theme.textTheme.bodyMedium),
                if (block.crowdHint.isNotEmpty)
                  Text('Crowd: ${block.crowdHint}',
                      style: theme.textTheme.bodyMedium),
              ],
            ),
            const SizedBox(height: 16),

            // Reason / description
            Text(
              block.reason,
              style: theme.textTheme.bodyLarge?.copyWith(height: 1.4),
            ),
            const SizedBox(height: 24),

            // Actions
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    icon: const Icon(Icons.map),
                    label: const Text('Navigate'),
                    onPressed: _openMaps,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.bookmark_border),
                    label: const Text('Save'),
                    onPressed: () {
                      // TODO: hook into savedController
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Saved for later (mock)')),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
