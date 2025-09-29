import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_prefs.freezed.dart';
part 'onboarding_prefs.g.dart';

@freezed
abstract class OnboardingPrefs with _$OnboardingPrefs {
  const factory OnboardingPrefs({
    required String city,
    required DateTime startDate,
    required int days,
    @Default(r'$$') String budget, // $, $$, $$$
    @Default(<String>[]) List<String> interests, // e.g. ['food', 'culture']
  }) = _OnboardingPrefs;

  factory OnboardingPrefs.fromJson(Map<String, dynamic> json) =>
      _$OnboardingPrefsFromJson(json);
}
