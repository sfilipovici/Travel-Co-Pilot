import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
abstract class Trip with _$Trip {
  const factory Trip({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required String city,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'days') required List<TripDay> days,
    @JsonKey(name: 'is_active') @Default(false) bool isActive,
    @JsonKey(name: 'categories') @Default([]) List<String> categories,
    @JsonKey(name: 'budget_amount') int? budgetAmount,
    String? currency,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}

@freezed
abstract class TripDay with _$TripDay {
  const factory TripDay({
    required int day,
    @Default([]) List<TripBlock> blocks,
  }) = _TripDay;

  factory TripDay.fromJson(Map<String, dynamic> json) =>
      _$TripDayFromJson(json);
}

@freezed
abstract class TripBlock with _$TripBlock {
  const factory TripBlock({
    @Default('') String title,
    String? time,
    String? reason,
    @JsonKey(name: 'place_id') String? placeId,
    TripCoords? coords,
    @Default([]) List<String> categories,
    double? rating,
    @JsonKey(name: 'map_url') String? mapUrl, // ✅ Added mapUrl
    @JsonKey(name: 'price_level') int? priceLevel,
    @JsonKey(name: 'opening_hours') List<String>? openingHours,
    String? address,
    @JsonKey(name: 'crowd_hint') String? crowdHint,
    @Default([]) List<String> sources,
  }) = _TripBlock;

  factory TripBlock.fromJson(Map<String, dynamic> json) =>
      _$TripBlockFromJson(json);
}

/// Runtime-only POI getter (not part of JSON/DB)
extension TripBlockPoi on TripBlock {
  POI toPOI() {
    return POI(
      placeId: placeId ?? '',
      name: title.isNotEmpty ? title : 'Unknown',
      lat: coords?.lat ?? 0.0,
      lng: coords?.lng ?? 0.0,
      categories: categories,
      rating: rating,
      priceLevel: priceLevel,
      openingHours: openingHours,
      address: address,
      mapUrl: mapUrl, // ✅ pass along mapUrl
      timeOfDay: time ?? '',
      reason: reason ?? '',
      budgetHint: '',
      crowdHint: crowdHint ?? '',
      sources: sources,
    );
  }

  POI? get poi {
    if (title.isEmpty && placeId == null) return null;
    return toPOI();
  }
}

@freezed
abstract class TripCoords with _$TripCoords {
  const factory TripCoords({double? lat, double? lng}) = _TripCoords;

  factory TripCoords.fromJson(Map<String, dynamic> json) =>
      _$TripCoordsFromJson(json);
}
