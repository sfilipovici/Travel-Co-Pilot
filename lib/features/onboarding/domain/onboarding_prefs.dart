// lib/features/onboarding/domain/onboarding_prefs.dart
import 'package:flutter/foundation.dart';

@immutable
class OnboardingPrefs {
  /// Destination city (e.g., "Vienna")
  final String city;

  /// Trip start date
  final DateTime startDate;

  /// Number of days
  final int days;

  /// Interests chips (nature, food, culture, etc.)
  final List<String> interests;

  /// Budget level 1..3 ($ – $$$). 2 is default.
  final int budgetLevel;

  const OnboardingPrefs({
    required this.city,
    required this.startDate,
    required this.days,
    this.interests = const <String>[],
    this.budgetLevel = 2,
  });

  OnboardingPrefs copyWith({
    String? city,
    DateTime? startDate,
    int? days,
    List<String>? interests,
    int? budgetLevel,
  }) {
    return OnboardingPrefs(
      city: city ?? this.city,
      startDate: startDate ?? this.startDate,
      days: days ?? this.days,
      interests: interests ?? this.interests,
      budgetLevel: budgetLevel ?? this.budgetLevel,
    );
  }

  factory OnboardingPrefs.fromJson(Map<String, Object?> json) {
    return OnboardingPrefs(
      city: json['city'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      days: json['days'] as int,
      interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      budgetLevel: (json['budgetLevel'] as int?) ?? 2,
    );
  }

  Map<String, Object?> toJson() => <String, Object?>{
        'city': city,
        'startDate': startDate.toIso8601String(),
        'days': days,
        'interests': interests,
        'budgetLevel': budgetLevel,
      };
}
