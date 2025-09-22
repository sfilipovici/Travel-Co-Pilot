// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrailImpl _$$TrailImplFromJson(Map<String, dynamic> json) => _$TrailImpl(
      trailId: json['trailId'] as String,
      name: json['name'] as String,
      checkpoints: (json['checkpoints'] as List<dynamic>?)
              ?.map((e) => TrailCheckpoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TrailCheckpoint>[],
      bundleUrl: json['bundleUrl'] as String? ?? '',
      sizeMB: (json['sizeMB'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TrailImplToJson(_$TrailImpl instance) =>
    <String, dynamic>{
      'trailId': instance.trailId,
      'name': instance.name,
      'checkpoints': instance.checkpoints,
      'bundleUrl': instance.bundleUrl,
      'sizeMB': instance.sizeMB,
    };

_$TrailCheckpointImpl _$$TrailCheckpointImplFromJson(
        Map<String, dynamic> json) =>
    _$TrailCheckpointImpl(
      title: json['title'] as String,
      coords: LatLng.fromJson(json['coords'] as Map<String, dynamic>),
      hint: json['hint'] as String? ?? '',
    );

Map<String, dynamic> _$$TrailCheckpointImplToJson(
        _$TrailCheckpointImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'coords': instance.coords,
      'hint': instance.hint,
    };
