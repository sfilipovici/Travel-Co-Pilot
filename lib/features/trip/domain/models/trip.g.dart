// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripImpl _$$TripImplFromJson(Map<String, dynamic> json) => _$TripImpl(
      id: json['id'] as String?,
      city: json['city'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      days: (json['days'] as List<dynamic>)
          .map((e) => TripDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      summaryTips: (json['summary_tips'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$TripImplToJson(_$TripImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'start_date': instance.startDate.toIso8601String(),
      'days': instance.days,
      'summary_tips': instance.summaryTips,
    };

_$TripDayImpl _$$TripDayImplFromJson(Map<String, dynamic> json) =>
    _$TripDayImpl(
      day: (json['day'] as num).toInt(),
      blocks: (json['blocks'] as List<dynamic>?)
              ?.map((e) => TripBlock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TripBlock>[],
    );

Map<String, dynamic> _$$TripDayImplToJson(_$TripDayImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'blocks': instance.blocks,
    };

_$TripBlockImpl _$$TripBlockImplFromJson(Map<String, dynamic> json) =>
    _$TripBlockImpl(
      time: json['time'] as String,
      title: json['title'] as String,
      coords: LatLng.fromJson(json['coords'] as Map<String, dynamic>),
      placeId: json['place_id'] as String?,
      reason: json['reason'] as String? ?? 'No details provided',
      budgetHint: json['budget_hint'] as String? ?? '',
      crowdHint: json['crowd_hint'] as String? ?? '',
      poiId: json['poi_id'] as String?,
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$TripBlockImplToJson(_$TripBlockImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'title': instance.title,
      'coords': instance.coords,
      'place_id': instance.placeId,
      'reason': instance.reason,
      'budget_hint': instance.budgetHint,
      'crowd_hint': instance.crowdHint,
      'poi_id': instance.poiId,
      'sources': instance.sources,
    };
