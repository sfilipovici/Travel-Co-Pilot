import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_copilot/core/models/geo.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
class Trip with _$Trip {
  const factory Trip({
    String? id, // allow null → so it can be omitted on insert
    required String city,
    @JsonKey(name: 'start_date') required DateTime startDate,
    required List<TripDay> days,
    @JsonKey(name: 'summary_tips')
    @Default(<String>[])
    List<String> summaryTips,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}

@freezed
class TripDay with _$TripDay {
  const factory TripDay({
    required int day,
    @Default(<TripBlock>[]) List<TripBlock> blocks,
  }) = _TripDay;

  factory TripDay.fromJson(Map<String, dynamic> json) =>
      _$TripDayFromJson(json);
}

@freezed
class TripBlock with _$TripBlock {
  const factory TripBlock({
    required String time,
    required String title,
    required LatLng coords,
    @JsonKey(name: 'place_id') String? placeId, // NEW
    @Default('No details provided') String reason,
    @JsonKey(name: 'budget_hint') @Default('') String budgetHint,
    @JsonKey(name: 'crowd_hint') @Default('') String crowdHint,
    @JsonKey(name: 'poi_id') String? poiId,
    @Default(<String>[]) List<String> sources,
  }) = _TripBlock;

  factory TripBlock.fromJson(Map<String, dynamic> json) =>
      _$TripBlockFromJson(json);
}
