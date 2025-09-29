import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/downloads/domain/download_item.dart';

class DownloadsController extends StateNotifier<List<DownloadItem>> {
  DownloadsController()
      : super(const [
          DownloadItem(
            id: 'mbtiles-bucharest',
            title: 'Bucharest – core MBTiles',
            sizeMB: 120,
            type: DownloadType.mapTiles,
          ),
          DownloadItem(
            id: 'mbtiles-transylvania',
            title: 'Transylvania – scenic MBTiles',
            sizeMB: 260,
            type: DownloadType.mapTiles,
          ),
          DownloadItem(
            id: 'ar-medieval-walk',
            title: 'AR Trail – Medieval Walk',
            sizeMB: 45,
            type: DownloadType.arBundle,
          ),
          DownloadItem(
            id: 'ar-coffee-crawl',
            title: 'AR Trail – Coffee Crawl',
            sizeMB: 38,
            type: DownloadType.arBundle,
          ),
        ]);

  final _timers = <String, Timer>{};

  DownloadItem? _find(String id) => state.firstWhere(
        (e) => e.id == id,
        orElse: () => const DownloadItem(
          id: '',
          title: '',
          sizeMB: 0,
          type: DownloadType.mapTiles,
        ),
      );

  void _update(String id, DownloadItem Function(DownloadItem) upd) {
    state = [
      for (final it in state)
        if (it.id == id) upd(it) else it,
    ];
  }

  void start(String id) {
    final it = _find(id);
    if (it == null || it.id.isEmpty) return;
    if (it.status == DownloadStatus.completed) return;

    _update(id, (e) => e.copyWith(status: DownloadStatus.downloading));

    // Simulated throughput: ~12 MB/s on map tiles, ~8 MB/s on AR bundles
    final mbPerSec = it.type == DownloadType.mapTiles ? 12.0 : 8.0;
    final totalMB = it.sizeMB.toDouble();

    _timers[id]?.cancel();
    _timers[id] = Timer.periodic(const Duration(milliseconds: 200), (t) {
      final cur = _find(id);
      if (cur == null || cur.id.isEmpty) {
        t.cancel();
        return;
      }
      if (cur.status != DownloadStatus.downloading) return;

      final inc = (mbPerSec / 5) / totalMB; // 200ms tick
      var p = (cur.progress + inc).clamp(0.0, 1.0);
      var status = cur.status;
      if (p >= 1.0) {
        p = 1.0;
        status = DownloadStatus.completed;
        t.cancel();
        _timers.remove(id);
      }

      _update(id, (e) => e.copyWith(progress: p, status: status));
    });
  }

  void pause(String id) {
    _timers[id]?.cancel();
    _timers.remove(id);
    _update(
      id,
      (e) => e.status == DownloadStatus.downloading
          ? e.copyWith(status: DownloadStatus.paused)
          : e,
    );
  }

  void resume(String id) {
    final it = _find(id);
    if (it == null || it.id.isEmpty) return;
    if (it.status == DownloadStatus.paused) {
      _update(id, (e) => e.copyWith(status: DownloadStatus.downloading));
      start(id);
    }
  }

  void cancel(String id) {
    _timers[id]?.cancel();
    _timers.remove(id);
    _update(
      id,
      (e) => e.copyWith(status: DownloadStatus.notStarted, progress: 0),
    );
  }

  void delete(String id) {
    // Reset to not started (mock: we don’t manage filesystem yet)
    _timers[id]?.cancel();
    _timers.remove(id);
    _update(
      id,
      (e) => e.copyWith(status: DownloadStatus.notStarted, progress: 0),
    );
  }

  @override
  void dispose() {
    for (final t in _timers.values) {
      t.cancel();
    }
    _timers.clear();
    super.dispose();
  }
}

final downloadsProvider =
    StateNotifierProvider<DownloadsController, List<DownloadItem>>(
  (ref) => DownloadsController(),
);
