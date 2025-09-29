// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ar_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AROverlay _$AROverlayFromJson(Map<String, dynamic> json) => _AROverlay(
  id: json['id'] as String,
  type: json['type'] as String? ?? 'marker',
);

Map<String, dynamic> _$AROverlayToJson(_AROverlay instance) =>
    <String, dynamic>{'id': instance.id, 'type': instance.type};

_ARCard _$ARCardFromJson(Map<String, dynamic> json) => _ARCard(
  arCardId: json['arCardId'] as String,
  poiId: json['poiId'] as String,
  shortStory: json['shortStory'] as String,
  audioUrl: json['audioUrl'] as String? ?? '',
  overlays:
      (json['overlays'] as List<dynamic>?)
          ?.map((e) => AROverlay.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AROverlay>[],
);

Map<String, dynamic> _$ARCardToJson(_ARCard instance) => <String, dynamic>{
  'arCardId': instance.arCardId,
  'poiId': instance.poiId,
  'shortStory': instance.shortStory,
  'audioUrl': instance.audioUrl,
  'overlays': instance.overlays,
};
