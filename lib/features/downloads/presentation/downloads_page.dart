import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/downloads/domain/download_item.dart';
import 'package:travel_copilot/features/downloads/presentation/downloads_controller.dart';

class DownloadsPage extends ConsumerWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(downloadsProvider);
    final ctrl = ref.read(downloadsProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Downloads')),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, i) {
          final it = items[i];
          return ListTile(
            leading: _TypeIcon(type: it.type),
            title: Text(it.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${it.sizeMB} MB • ${_statusLabel(it.status)}'),
                const SizedBox(height: 6),
                LinearProgressIndicator(value: it.progress),
              ],
            ),
            trailing: Wrap(
              spacing: 6,
              children: _actionsFor(it, ctrl),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _actionsFor(DownloadItem it, DownloadsController ctrl) {
    switch (it.status) {
      case DownloadStatus.notStarted:
        return [
          IconButton(
            tooltip: 'Start',
            icon: const Icon(Icons.download),
            onPressed: () => ctrl.start(it.id),
          ),
        ];
      case DownloadStatus.downloading:
        return [
          IconButton(
            tooltip: 'Pause',
            icon: const Icon(Icons.pause),
            onPressed: () => ctrl.pause(it.id),
          ),
          IconButton(
            tooltip: 'Cancel',
            icon: const Icon(Icons.cancel_outlined),
            onPressed: () => ctrl.cancel(it.id),
          ),
        ];
      case DownloadStatus.paused:
        return [
          IconButton(
            tooltip: 'Resume',
            icon: const Icon(Icons.play_arrow),
            onPressed: () => ctrl.resume(it.id),
          ),
          IconButton(
            tooltip: 'Cancel',
            icon: const Icon(Icons.cancel_outlined),
            onPressed: () => ctrl.cancel(it.id),
          ),
        ];
      case DownloadStatus.completed:
        return [
          IconButton(
            tooltip: 'Delete',
            icon: const Icon(Icons.delete_outline),
            onPressed: () => ctrl.delete(it.id),
          ),
        ];
      case DownloadStatus.failed:
        return [
          IconButton(
            tooltip: 'Retry',
            icon: const Icon(Icons.refresh),
            onPressed: () => ctrl.start(it.id),
          ),
        ];
    }
  }

  String _statusLabel(DownloadStatus s) {
    switch (s) {
      case DownloadStatus.notStarted:
        return 'Not started';
      case DownloadStatus.downloading:
        return 'Downloading…';
      case DownloadStatus.paused:
        return 'Paused';
      case DownloadStatus.completed:
        return 'Completed';
      case DownloadStatus.failed:
        return 'Failed';
    }
  }
}

class _TypeIcon extends StatelessWidget {
  const _TypeIcon({required this.type});
  final DownloadType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case DownloadType.mapTiles:
        return const Icon(Icons.map);
      case DownloadType.arBundle:
        return const Icon(Icons.view_in_ar);
    }
  }
}
