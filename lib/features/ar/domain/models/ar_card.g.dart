// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ar_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AROverlayImpl _$$AROverlayImplFromJson(Map<String, dynamic> json) =>
    _$AROverlayImpl(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'marker',
    );

Map<String, dynamic> _$$AROverlayImplToJson(_$AROverlayImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };

_$ARCardImpl _$$ARCardImplFromJson(Map<String, dynamic> json) => _$ARCardImpl(
      arCardId: json['arCardId'] as String,
      poiId: json['poiId'] as String,
      shortStory: json['shortStory'] as String,
      audioUrl: json['audioUrl'] as String? ?? '',
      overlays: (json['overlays'] as List<dynamic>?)
              ?.map((e) => AROverlay.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AROverlay>[],
    );

Map<String, dynamic> _$$ARCardImplToJson(_$ARCardImpl instance) =>
    <String, dynamic>{
      'arCardId': instance.arCardId,
      'poiId': instance.poiId,
      'shortStory': instance.shortStory,
      'audioUrl': instance.audioUrl,
      'overlays': instance.overlays,
    };
