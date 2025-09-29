// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DownloadItem _$DownloadItemFromJson(Map<String, dynamic> json) =>
    _DownloadItem(
      id: json['id'] as String,
      title: json['title'] as String,
      sizeMB: (json['sizeMB'] as num).toInt(),
      type: $enumDecode(_$DownloadTypeEnumMap, json['type']),
      status:
          $enumDecodeNullable(_$DownloadStatusEnumMap, json['status']) ??
          DownloadStatus.notStarted,
      progress: (json['progress'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$DownloadItemToJson(_DownloadItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sizeMB': instance.sizeMB,
      'type': _$DownloadTypeEnumMap[instance.type]!,
      'status': _$DownloadStatusEnumMap[instance.status]!,
      'progress': instance.progress,
    };

const _$DownloadTypeEnumMap = {
  DownloadType.mapTiles: 'mapTiles',
  DownloadType.arBundle: 'arBundle',
};

const _$DownloadStatusEnumMap = {
  DownloadStatus.notStarted: 'notStarted',
  DownloadStatus.downloading: 'downloading',
  DownloadStatus.paused: 'paused',
  DownloadStatus.completed: 'completed',
  DownloadStatus.failed: 'failed',
};
