import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_copilot/features/poi/domain/models/poi.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
abstract class Trip with _$Trip {
  const factory Trip({
    @Default('') String id, // Safe default
    @Default('') String city, // Prevent null crash
    DateTime? startDate,
    @Default([]) List<TripDay> days,
    @Default([]) List<String> summaryTips,

    int? budgetAmount,
    String? currency,

    @Default([]) List<String> categories,

    @JsonKey(name: 'is_active') @Default(false) bool isActive,

    DateTime? createdAt,
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
    String? placeId,
    TripCoords? coords,
    @Default([]) List<String> categories,
    double? rating,
    int? priceLevel,
    List<String>? openingHours,
    String? address,
    String? crowdHint,
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
