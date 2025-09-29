import 'package:flutter/material.dart';
import 'package:travel_copilot/features/plan/presentation/widgets/activity_card.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';

class DaySection extends StatelessWidget {
  const DaySection({
    required this.dayNumber,
    required this.blocks,
    required this.isExpanded,
    required this.onToggle,
    super.key,
    this.onReorder,
  });

  final int dayNumber;
  final List<TripBlock> blocks;
  final bool isExpanded;
  final VoidCallback onToggle;
  final void Function(int oldIndex, int newIndex)? onReorder;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dayColor =
        Colors.primaries[(dayNumber - 1) % Colors.primaries.length];

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: onToggle,
            child: Container(
              decoration: BoxDecoration(
                color: dayColor.withOpacity(0.1),
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Day $dayNumber",
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: dayColor.shade700,
                      ),
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: dayColor.shade700,
                  ),
                ],
              ),
            ),
          ),
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            crossFadeState: isExpanded
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstChild: blocks.isEmpty
                ? const Padding(
                    padding: EdgeInsets.all(24),
                    child: Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  )
                : ReorderableListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    onReorder: (oldIndex, newIndex) {
                      onReorder?.call(oldIndex, newIndex);
                    },
                    children: [
                      for (var i = 0; i < blocks.length; i++)
                        ActivityCard(
                          key: ValueKey('${dayNumber}_$i'),
                          block: blocks[i],
                        ),
                    ],
                  ),
            secondChild: const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
