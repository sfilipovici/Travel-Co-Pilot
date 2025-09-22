// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$POIImpl _$$POIImplFromJson(Map<String, dynamic> json) => _$POIImpl(
      poiId: json['poiId'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      priceLevel: (json['priceLevel'] as num).toInt(),
      coords: LatLng.fromJson(json['coords'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      address: json['address'] as String? ?? '',
      openingHours: (json['openingHours'] as List<dynamic>?)
              ?.map((e) => OpeningHour.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OpeningHour>[],
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      sourceRefs: (json['sourceRefs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$POIImplToJson(_$POIImpl instance) => <String, dynamic>{
      'poiId': instance.poiId,
      'name': instance.name,
      'category': instance.category,
      'priceLevel': instance.priceLevel,
      'coords': instance.coords,
      'rating': instance.rating,
      'address': instance.address,
      'openingHours': instance.openingHours,
      'images': instance.images,
      'sourceRefs': instance.sourceRefs,
    };

_$OpeningHourImpl _$$OpeningHourImplFromJson(Map<String, dynamic> json) =>
    _$OpeningHourImpl(
      weekday: (json['weekday'] as num).toInt(),
      open: json['open'] as String,
      close: json['close'] as String,
    );

Map<String, dynamic> _$$OpeningHourImplToJson(_$OpeningHourImpl instance) =>
    <String, dynamic>{
      'weekday': instance.weekday,
      'open': instance.open,
      'close': instance.close,
    };
