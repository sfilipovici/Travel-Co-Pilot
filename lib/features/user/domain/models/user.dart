import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class UserSettings with _$UserSettings {
  const factory UserSettings({
    @Default('en') String language,
    @Default('metric') String units,
    @Default(true) bool notificationsEnabled,
  }) = _UserSettings;

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    required String uid,
    required UserSettings settings,
    @Default(<String>[]) List<String> savedPOI,
    @Default(<String>[]) List<String> trips,
    @Default(<String>[]) List<String> downloads,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
