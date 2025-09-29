import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_item.freezed.dart';
part 'download_item.g.dart';

enum DownloadType { mapTiles, arBundle }

enum DownloadStatus { notStarted, downloading, paused, completed, failed }

@freezed
abstract class DownloadItem with _$DownloadItem {
  const factory DownloadItem({
    required String id,
    required String title,
    required int sizeMB,
    required DownloadType type,
    @Default(DownloadStatus.notStarted) DownloadStatus status,
    @Default(0.0) double progress,
  }) = _DownloadItem;

  factory DownloadItem.fromJson(Map<String, dynamic> json) =>
      _$DownloadItemFromJson(json);
}
