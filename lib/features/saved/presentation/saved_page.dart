import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/saved/presentation/saved_controller.dart';

class SavedPage extends ConsumerWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(savedProvider);
    final controller = ref.read(savedProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved'),
        actions: [
          if (items.isNotEmpty)
            IconButton(
              onPressed: controller.clear,
              tooltip: 'Clear all',
              icon: const Icon(Icons.delete_sweep_outlined),
            ),
        ],
      ),
      body: items.isEmpty
          ? const Center(
              child: Text('No saved places yet.'),
            )
          : ListView.separated(
              itemCount: items.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, i) {
                final it = items[i];
                return ListTile(
                  leading: const Icon(Icons.bookmark),
                  title: Text(it.title),
                  subtitle: Text('id: ${it.id}'),
                  trailing: IconButton(
                    tooltip: 'Remove',
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () => controller.remove(it.id),
                  ),
                );
              },
            ),
    );
  }
}
