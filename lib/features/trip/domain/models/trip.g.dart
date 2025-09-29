// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Trip _$TripFromJson(Map<String, dynamic> json) => _Trip(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  city: json['city'] as String,
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  days: (json['days'] as List<dynamic>)
      .map((e) => TripDay.fromJson(e as Map<String, dynamic>))
      .toList(),
  isActive: json['is_active'] as bool? ?? false,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  budgetAmount: (json['budget_amount'] as num?)?.toInt(),
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$TripToJson(_Trip instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'city': instance.city,
  'start_date': instance.startDate?.toIso8601String(),
  'end_date': instance.endDate?.toIso8601String(),
  'days': instance.days,
  'is_active': instance.isActive,
  'categories': instance.categories,
  'budget_amount': instance.budgetAmount,
  'currency': instance.currency,
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
  placeId: json['place_id'] as String?,
  coords: json['coords'] == null
      ? null
      : TripCoords.fromJson(json['coords'] as Map<String, dynamic>),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  rating: (json['rating'] as num?)?.toDouble(),
  mapUrl: json['map_url'] as String?,
  priceLevel: (json['price_level'] as num?)?.toInt(),
  openingHours: (json['opening_hours'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  address: json['address'] as String?,
  crowdHint: json['crowd_hint'] as String?,
  sources:
      (json['sources'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$TripBlockToJson(_TripBlock instance) =>
    <String, dynamic>{
      'title': instance.title,
      'time': instance.time,
      'reason': instance.reason,
      'place_id': instance.placeId,
      'coords': instance.coords,
      'categories': instance.categories,
      'rating': instance.rating,
      'map_url': instance.mapUrl,
      'price_level': instance.priceLevel,
      'opening_hours': instance.openingHours,
      'address': instance.address,
      'crowd_hint': instance.crowdHint,
      'sources': instance.sources,
    };

_TripCoords _$TripCoordsFromJson(Map<String, dynamic> json) => _TripCoords(
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
);

Map<String, dynamic> _$TripCoordsToJson(_TripCoords instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
