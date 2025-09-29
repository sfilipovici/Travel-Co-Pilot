import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
abstract class AppSettings with _$AppSettings {
  const factory AppSettings({
    @Default('en') String languageCode,
    @Default(true) bool useMetric,
    @Default(true) bool pushEnabled,
    @Default(true) bool inAppHintsEnabled,
    @Default(false) bool shareAnonCrowdData,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
