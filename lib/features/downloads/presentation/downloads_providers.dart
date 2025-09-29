import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum DownloadStatus { idle, downloading, completed }

class DownloadEntry {
  DownloadEntry({
    required this.id,
    required this.name,
    required this.sizeMB,
    this.status = DownloadStatus.idle,
    this.progress = 0,
  });

  final String id;
  final String name;
  final int sizeMB;
  final DownloadStatus status;
  final int progress; // 0..100

  DownloadEntry copyWith({DownloadStatus? status, int? progress}) {
    return DownloadEntry(
      id: id,
      name: name,
      sizeMB: sizeMB,
      status: status ?? this.status,
      progress: progress ?? this.progress,
    );
  }
}

class DownloadsController extends StateNotifier<List<DownloadEntry>> {
  DownloadsController() : super(const []);

  Timer? _timer;

  void startDownload({
    required String id,
    required String name,
    required int sizeMB,
  }) {
    final existing = state.where((e) => e.id == id).toList();
    if (existing.isNotEmpty &&
        existing.first.status == DownloadStatus.completed) {
      return;
    }

    // add/update entry
    final updated = [
      for (final e in state)
        if (e.id == id)
          e.copyWith(status: DownloadStatus.downloading, progress: 0)
        else
          e,
      if (existing.isEmpty)
        DownloadEntry(
          id: id,
          name: name,
          sizeMB: sizeMB,
          status: DownloadStatus.downloading,
        ),
    ];
    state = updated;

    // fake progress
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(milliseconds: 250), (t) {
      final entries = state.toList();
      var allDone = true;
      for (var i = 0; i < entries.length; i++) {
        final e = entries[i];
        if (e.status == DownloadStatus.downloading) {
          final next = (e.progress + 5).clamp(0, 100);
          entries[i] = e.copyWith(
            progress: next,
            status: next >= 100
                ? DownloadStatus.completed
                : DownloadStatus.downloading,
          );
        }
        if (entries[i].status != DownloadStatus.completed) {
          allDone = false;
        }
      }
      state = entries;
      if (allDone) {
        _timer?.cancel();
        _timer = null;
      }
    });
  }

  void remove(String id) {
    state = state.where((e) => e.id != id).toList();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

final downloadsControllerProvider =
    StateNotifierProvider<DownloadsController, List<DownloadEntry>>((ref) {
  return DownloadsController();
});
