import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    // i18n
    @Default('en') String languageCode, // 'en', 'ro' (ready to expand)
    // units
    @Default(true) bool useMetric, // km/°C vs mi/°F
    // notifications
    @Default(true) bool pushEnabled,
    @Default(true) bool inAppHintsEnabled,

    // privacy
    @Default(false) bool shareAnonCrowdData, // opt-in
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
