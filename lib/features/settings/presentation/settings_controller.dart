// ignore_for_file: avoid_positional_boolean_parameters
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_copilot/features/settings/domain/app_settings.dart';

class SettingsController extends StateNotifier<AppSettings> {
  SettingsController() : super(const AppSettings());

  // toggles
  void setLanguage(String code) => state = state.copyWith(languageCode: code);

  void setUseMetric(bool value) => state = state.copyWith(useMetric: value);

  void setPush(bool value) => state = state.copyWith(pushEnabled: value);

  void setInAppHints(bool value) =>
      state = state.copyWith(inAppHintsEnabled: value);

  void setShareAnonCrowd(bool value) =>
      state = state.copyWith(shareAnonCrowdData: value);
}

final settingsProvider = StateNotifierProvider<SettingsController, AppSettings>(
  (ref) => SettingsController(),
);
