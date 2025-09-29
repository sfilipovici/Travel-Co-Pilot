// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) => _AppSettings(
  languageCode: json['languageCode'] as String? ?? 'en',
  useMetric: json['useMetric'] as bool? ?? true,
  pushEnabled: json['pushEnabled'] as bool? ?? true,
  inAppHintsEnabled: json['inAppHintsEnabled'] as bool? ?? true,
  shareAnonCrowdData: json['shareAnonCrowdData'] as bool? ?? false,
);

Map<String, dynamic> _$AppSettingsToJson(_AppSettings instance) =>
    <String, dynamic>{
      'languageCode': instance.languageCode,
      'useMetric': instance.useMetric,
      'pushEnabled': instance.pushEnabled,
      'inAppHintsEnabled': instance.inAppHintsEnabled,
      'shareAnonCrowdData': instance.shareAnonCrowdData,
    };
