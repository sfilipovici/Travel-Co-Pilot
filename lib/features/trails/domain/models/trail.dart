import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_copilot/core/models/geo.dart';

part 'trail.freezed.dart';
part 'trail.g.dart';

@freezed
abstract class Trail with _$Trail {
  const factory Trail({
    required String trailId,
    required String name,
    @Default(<TrailCheckpoint>[]) List<TrailCheckpoint> checkpoints,
    @Default('') String bundleUrl,
    @Default(0) int sizeMB,
  }) = _Trail;

  factory Trail.fromJson(Map<String, dynamic> json) => _$TrailFromJson(json);
}

@freezed
abstract class TrailCheckpoint with _$TrailCheckpoint {
  const factory TrailCheckpoint({
    required String title,
    required LatLng coords,
    @Default('') String hint,
  }) = _TrailCheckpoint;

  factory TrailCheckpoint.fromJson(Map<String, dynamic> json) =>
      _$TrailCheckpointFromJson(json);
}
