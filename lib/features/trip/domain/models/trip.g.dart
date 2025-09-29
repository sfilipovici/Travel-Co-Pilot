// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Trip _$TripFromJson(Map<String, dynamic> json) => _Trip(
  id: json['id'] as String? ?? '',
  city: json['city'] as String? ?? '',
  startDate: json['startDate'] == null
      ? null
      : DateTime.parse(json['startDate'] as String),
  days:
      (json['days'] as List<dynamic>?)
          ?.map((e) => TripDay.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  summaryTips:
      (json['summaryTips'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  budgetAmount: (json['budgetAmount'] as num?)?.toInt(),
  currency: json['currency'] as String?,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  isActive: json['is_active'] as bool? ?? false,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$TripToJson(_Trip instance) => <String, dynamic>{
  'id': instance.id,
  'city': instance.city,
  'startDate': instance.startDate?.toIso8601String(),
  'days': instance.days,
  'summaryTips': instance.summaryTips,
  'budgetAmount': instance.budgetAmount,
  'currency': instance.currency,
  'categories': instance.categories,
  'is_active': instance.isActive,
  'createdAt': instance.createdAt?.toIso8601String(),
};

_TripDay _$TripDayFromJson(Map<String, dynamic> json) => _TripDay(
  day: (json['day'] as num).toInt(),
  blocks:
      (json['blocks'] as List<dynamic>?)
          ?.map((e) => TripBlock.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TripDayToJson(_TripDay instance) => <String, dynamic>{
  'day': instance.day,
  'blocks': instance.blocks,
};

_TripBlock _$TripBlockFromJson(Map<String, dynamic> json) => _TripBlock(
  title: json['title'] as String? ?? '',
  time: json['time'] as String?,
  reason: json['reason'] as String?,
  placeId: json['placeId'] as String?,
  coords: json['coords'] == null
      ? null
      : TripCoords.fromJson(json['coords'] as Map<String, dynamic>),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  rating: (json['rating'] as num?)?.toDouble(),
  priceLevel: (json['priceLevel'] as num?)?.toInt(),
  openingHours: (json['openingHours'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  address: json['address'] as String?,
  crowdHint: json['crowdHint'] as String?,
  sources:
      (json['sources'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$TripBlockToJson(_TripBlock instance) =>
    <String, dynamic>{
      'title': instance.title,
      'time': instance.time,
      'reason': instance.reason,
      'placeId': instance.placeId,
      'coords': instance.coords,
      'categories': instance.categories,
      'rating': instance.rating,
      'priceLevel': instance.priceLevel,
      'openingHours': instance.openingHours,
      'address': instance.address,
      'crowdHint': instance.crowdHint,
      'sources': instance.sources,
    };

_TripCoords _$TripCoordsFromJson(Map<String, dynamic> json) => _TripCoords(
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
);

Map<String, dynamic> _$TripCoordsToJson(_TripCoords instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
