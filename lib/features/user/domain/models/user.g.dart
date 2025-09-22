// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSettingsImpl _$$UserSettingsImplFromJson(Map<String, dynamic> json) =>
    _$UserSettingsImpl(
      language: json['language'] as String? ?? 'en',
      units: json['units'] as String? ?? 'metric',
      notificationsEnabled: json['notificationsEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$UserSettingsImplToJson(_$UserSettingsImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'units': instance.units,
      'notificationsEnabled': instance.notificationsEnabled,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uid: json['uid'] as String,
      settings: UserSettings.fromJson(json['settings'] as Map<String, dynamic>),
      savedPOI: (json['savedPOI'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      trips:
          (json['trips'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      downloads: (json['downloads'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'settings': instance.settings,
      'savedPOI': instance.savedPOI,
      'trips': instance.trips,
      'downloads': instance.downloads,
    };
