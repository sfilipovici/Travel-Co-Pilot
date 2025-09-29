// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_prefs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnboardingPrefs _$OnboardingPrefsFromJson(Map<String, dynamic> json) =>
    _OnboardingPrefs(
      city: json['city'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      days: (json['days'] as num).toInt(),
      budget: json['budget'] as String? ?? r'$$',
      interests:
          (json['interests'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$OnboardingPrefsToJson(_OnboardingPrefs instance) =>
    <String, dynamic>{
      'city': instance.city,
      'startDate': instance.startDate.toIso8601String(),
      'days': instance.days,
      'budget': instance.budget,
      'interests': instance.interests,
    };
