import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:url_launcher/url_launcher.dart';

class ActivityCard extends ConsumerWidget {
  const ActivityCard({required this.block, super.key});
  final TripBlock block;

  Future<void> _openDirections() async {
    if (block.mapUrl != null) {
      final uri = Uri.parse(block.mapUrl!);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        return;
      }
    }

    final lat = block.coords?.lat;
    final lng = block.coords?.lng;

    if (lat != null && lng != null) {
      final googleMapsUrl = Uri.parse(
        "https://www.google.com/maps/dir/?api=1&destination=$lat,$lng",
      );
      if (await canLaunchUrl(googleMapsUrl)) {
        await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
        return;
      }
    }

    if (block.address != null) {
      final encoded = Uri.encodeComponent(block.address!);
      final googleMapsUrl = Uri.parse(
        "https://www.google.com/maps/dir/?api=1&destination=$encoded",
      );
      await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
    }
  }

  void _showDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.55,
          maxChildSize: 0.9,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title + rating
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          block.title,
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      if (block.rating != null)
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 4),
                            Text(block.rating!.toStringAsFixed(1)),
                          ],
                        ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  if (block.address != null) ...[
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 18,
                          color: Colors.redAccent,
                        ),
                        const SizedBox(width: 6),
                        Expanded(child: Text(block.address!)),
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],

                  if (block.categories.isNotEmpty) ...[
                    Wrap(
                      spacing: 8,
                      children: block.categories
                          .map(
                            (c) => Chip(
                              label: Text(c),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 12),
                  ],

                  if (block.openingHours != null &&
                      block.openingHours!.isNotEmpty) ...[
                    Text(
                      "Opening Hours",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    ...block.openingHours!.map((h) => Text("• $h")),
                    const SizedBox(height: 12),
                  ],

                  if (block.reason != null) ...[
                    Text(
                      "Why visit?",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(block.reason!),
                  ],

                  const SizedBox(height: 20),

                  Row(
                    children: [
                      if (block.mapUrl != null ||
                          block.coords != null ||
                          block.address != null)
                        Expanded(
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6C63FF),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: _openDirections,
                            icon: const Icon(
                              Icons.directions,
                              color: Colors.white,
                            ),
                            label: const Text(
                              "Get Directions",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            side: const BorderSide(color: Color(0xFF6C63FF)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Save feature coming soon'),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Color(0xFF6C63FF),
                          ),
                          label: const Text(
                            "Save",
                            style: TextStyle(
                              color: Color(0xFF6C63FF),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (block.title.isEmpty) {
      return Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              CircularProgressIndicator(strokeWidth: 2),
              SizedBox(width: 12),
              Text("Loading activity..."),
            ],
          ),
        ),
      );
    }

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon / time bubble
            CircleAvatar(
              backgroundColor: Theme.of(
                context,
              ).colorScheme.primary.withOpacity(0.1),
              child: const Icon(Icons.place, color: Color(0xFF6C63FF)),
            ),
            const SizedBox(width: 12),

            // Title + Address + Time
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    block.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (block.address != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      block.address!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                    ),
                  ],
                  if (block.time != null) ...[
                    const SizedBox(height: 6),
                    Text(
                      "🕒 ${block.time}",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            // Actions
            Column(
              children: [
                TextButton.icon(
                  onPressed: () => _showDetails(context),
                  icon: const Icon(Icons.info_outline, size: 18),
                  label: const Text("Details"),
                ),
                if (block.mapUrl != null ||
                    block.coords != null ||
                    block.address != null)
                  TextButton.icon(
                    onPressed: _openDirections,
                    icon: const Icon(Icons.directions, size: 18),
                    label: const Text("Directions"),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
