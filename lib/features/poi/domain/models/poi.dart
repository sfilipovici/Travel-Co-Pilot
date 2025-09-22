import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_copilot/core/models/geo.dart';

part 'poi.freezed.dart';
part 'poi.g.dart';

@freezed
class POI with _$POI {
  const factory POI({
    required String poiId,
    required String name,
    required String category,
    required int priceLevel,
    required LatLng coords,
    @Default(0.0) double rating,
    @Default('') String address,
    @Default(<OpeningHour>[]) List<OpeningHour> openingHours,
    @Default(<String>[]) List<String> images,
    @Default(<String>[]) List<String> sourceRefs,
  }) = _POI;

  factory POI.fromJson(Map<String, dynamic> json) => _$POIFromJson(json);
}

@freezed
class OpeningHour with _$OpeningHour {
  const factory OpeningHour({
    required int weekday, // 1=Mon..7=Sun
    required String open, // "09:00"
    required String close, // "18:00"
  }) = _OpeningHour;

  factory OpeningHour.fromJson(Map<String, dynamic> json) =>
      _$OpeningHourFromJson(json);
}
