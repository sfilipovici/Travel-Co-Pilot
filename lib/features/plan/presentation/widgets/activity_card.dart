import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:travel_copilot/features/saved/domain/saved_item.dart';
import 'package:travel_copilot/features/saved/presentation/saved_controller.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';

class ActivityCard extends ConsumerStatefulWidget {
  const ActivityCard({
    super.key,
    required this.block,
    this.onReplace,
  });

  final TripBlock block;
  final VoidCallback? onReplace;

  @override
  ConsumerState<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends ConsumerState<ActivityCard> {
  bool _showDetails = false;

  Future<void> _openInMaps() async {
    final block = widget.block;

    Uri url;
    if (block.placeId != null && block.placeId!.isNotEmpty) {
      // ✅ Exact Google Maps navigation
      url = Uri.parse(
          "https://www.google.com/maps/dir/?api=1&destination=place_id:${block.placeId}");
    } else if (block.coords.lat != 0 && block.coords.lng != 0) {
      // Fallback to coordinates
      url = Uri.parse(
          "https://www.google.com/maps/dir/?api=1&destination=${block.coords.lat},${block.coords.lng}");
    } else {
      // Last fallback: search by name
      url = Uri.parse(
          "https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent(block.title)}");
    }

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Could not open Google Maps")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final block = widget.block;
    final saved = ref.watch(savedProvider);
    final controller = ref.read(savedProvider.notifier);
    final isBookmarkable = block.poiId != null && block.poiId!.isNotEmpty;
    final isSaved = isBookmarkable && saved.any((e) => e.id == block.poiId);

    final theme = Theme.of(context);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    block.title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if (isBookmarkable)
                  IconButton(
                    tooltip: isSaved ? 'Unsave' : 'Save',
                    icon: Icon(
                        isSaved ? Icons.bookmark : Icons.bookmark_add_outlined),
                    onPressed: () {
                      controller.toggle(SavedItem(
                        id: block.poiId!,
                        title: block.title,
                      ));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(isSaved
                              ? 'Removed from Saved'
                              : 'Saved for later'),
                          duration: const Duration(milliseconds: 900),
                        ),
                      );
                    },
                  ),
              ],
            ),
            const SizedBox(height: 6),

            // Quick facts row
            Wrap(
              spacing: 8,
              children: [
                Text(block.time, style: theme.textTheme.bodySmall),
                if (block.budgetHint.isNotEmpty)
                  Text(block.budgetHint, style: theme.textTheme.bodySmall),
                if (block.crowdHint.isNotEmpty)
                  Text(block.crowdHint, style: theme.textTheme.bodySmall),
              ],
            ),

            // Reason (optional)
            if (block.reason.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                block.reason,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color:
                      theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.8),
                ),
              ),
            ],

            const SizedBox(height: 12),

            // Buttons row
            // Buttons row (responsive)
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                TextButton.icon(
                  onPressed: () {
                    setState(() => _showDetails = !_showDetails);
                  },
                  icon: const Icon(Icons.info_outline),
                  label: Text(_showDetails ? "Hide details" : "Details"),
                ),
                FilledButton.tonalIcon(
                  onPressed: widget.onReplace,
                  icon: const Icon(Icons.swap_horiz),
                  label: const Text('Replace'),
                ),
                OutlinedButton.icon(
                  onPressed: _openInMaps,
                  icon: const Icon(Icons.navigation),
                  label: const Text('Directions'),
                ),
              ],
            ),

            // Expanded details
            if (_showDetails) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceVariant.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Details", style: theme.textTheme.titleMedium),
                    const SizedBox(height: 8),
                    Text(
                        "Crowd: ${block.crowdHint.isNotEmpty ? block.crowdHint : "N/A"}"),
                    Text(
                        "Budget: ${block.budgetHint.isNotEmpty ? block.budgetHint : "N/A"}"),
                    const SizedBox(height: 8),
                    Text("Sources: ${block.sources.join(", ")}"),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
