import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/trip/domain/models/trip.dart';
import 'package:travel_copilot/features/trip/domain/trip_repository.dart';

class ReplaceSheet extends ConsumerWidget {
  const ReplaceSheet({
    required this.block,
    required this.onReplaced,
    super.key,
  });

  final TripBlock block;
  final Future<void> Function(TripBlock alt) onReplaced;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ListTile(title: Text('Replace with…')),
          for (final choice in const ['closer', 'cheaper', 'local'])
            ListTile(
              title: Text(
                choice == 'closer'
                    ? 'Mai aproape (closer)'
                    : choice == 'cheaper'
                        ? 'Mai ieftin (cheaper)'
                        : 'Mai local (more local)',
              ),
              onTap: () async {
                Navigator.of(context).pop(); // close sheet
                final repo = ref.read(tripRepositoryProvider);
                try {
                  final alt = await repo.replaceBlock(block, choice);
                  await onReplaced(alt);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Replaced with $choice')),
                    );
                  }
                } catch (e) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Failed to replace: $e')),
                    );
                  }
                }
              },
            ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
