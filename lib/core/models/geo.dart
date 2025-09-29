import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo.freezed.dart';
part 'geo.g.dart';

@freezed
abstract class LatLng with _$LatLng {
  const factory LatLng({required double lat, required double lng}) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
}
