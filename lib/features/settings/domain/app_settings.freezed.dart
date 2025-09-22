// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) {
  return _AppSettings.fromJson(json);
}

/// @nodoc
mixin _$AppSettings {
// i18n
  String get languageCode =>
      throw _privateConstructorUsedError; // 'en', 'ro' (ready to expand)
// units
  bool get useMetric => throw _privateConstructorUsedError; // km/°C vs mi/°F
// notifications
  bool get pushEnabled => throw _privateConstructorUsedError;
  bool get inAppHintsEnabled => throw _privateConstructorUsedError; // privacy
  bool get shareAnonCrowdData => throw _privateConstructorUsedError;

  /// Serializes this AppSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsCopyWith<AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsCopyWith<$Res> {
  factory $AppSettingsCopyWith(
          AppSettings value, $Res Function(AppSettings) then) =
      _$AppSettingsCopyWithImpl<$Res, AppSettings>;
  @useResult
  $Res call(
      {String languageCode,
      bool useMetric,
      bool pushEnabled,
      bool inAppHintsEnabled,
      bool shareAnonCrowdData});
}

/// @nodoc
class _$AppSettingsCopyWithImpl<$Res, $Val extends AppSettings>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? useMetric = null,
    Object? pushEnabled = null,
    Object? inAppHintsEnabled = null,
    Object? shareAnonCrowdData = null,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      useMetric: null == useMetric
          ? _value.useMetric
          : useMetric // ignore: cast_nullable_to_non_nullable
              as bool,
      pushEnabled: null == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      inAppHintsEnabled: null == inAppHintsEnabled
          ? _value.inAppHintsEnabled
          : inAppHintsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      shareAnonCrowdData: null == shareAnonCrowdData
          ? _value.shareAnonCrowdData
          : shareAnonCrowdData // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsImplCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$$AppSettingsImplCopyWith(
          _$AppSettingsImpl value, $Res Function(_$AppSettingsImpl) then) =
      __$$AppSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String languageCode,
      bool useMetric,
      bool pushEnabled,
      bool inAppHintsEnabled,
      bool shareAnonCrowdData});
}

/// @nodoc
class __$$AppSettingsImplCopyWithImpl<$Res>
    extends _$AppSettingsCopyWithImpl<$Res, _$AppSettingsImpl>
    implements _$$AppSettingsImplCopyWith<$Res> {
  __$$AppSettingsImplCopyWithImpl(
      _$AppSettingsImpl _value, $Res Function(_$AppSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? useMetric = null,
    Object? pushEnabled = null,
    Object? inAppHintsEnabled = null,
    Object? shareAnonCrowdData = null,
  }) {
    return _then(_$AppSettingsImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      useMetric: null == useMetric
          ? _value.useMetric
          : useMetric // ignore: cast_nullable_to_non_nullable
              as bool,
      pushEnabled: null == pushEnabled
          ? _value.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      inAppHintsEnabled: null == inAppHintsEnabled
          ? _value.inAppHintsEnabled
          : inAppHintsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      shareAnonCrowdData: null == shareAnonCrowdData
          ? _value.shareAnonCrowdData
          : shareAnonCrowdData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsImpl implements _AppSettings {
  const _$AppSettingsImpl(
      {this.languageCode = 'en',
      this.useMetric = true,
      this.pushEnabled = true,
      this.inAppHintsEnabled = true,
      this.shareAnonCrowdData = false});

  factory _$AppSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsImplFromJson(json);

// i18n
  @override
  @JsonKey()
  final String languageCode;
// 'en', 'ro' (ready to expand)
// units
  @override
  @JsonKey()
  final bool useMetric;
// km/°C vs mi/°F
// notifications
  @override
  @JsonKey()
  final bool pushEnabled;
  @override
  @JsonKey()
  final bool inAppHintsEnabled;
// privacy
  @override
  @JsonKey()
  final bool shareAnonCrowdData;

  @override
  String toString() {
    return 'AppSettings(languageCode: $languageCode, useMetric: $useMetric, pushEnabled: $pushEnabled, inAppHintsEnabled: $inAppHintsEnabled, shareAnonCrowdData: $shareAnonCrowdData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.useMetric, useMetric) ||
                other.useMetric == useMetric) &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.inAppHintsEnabled, inAppHintsEnabled) ||
                other.inAppHintsEnabled == inAppHintsEnabled) &&
            (identical(other.shareAnonCrowdData, shareAnonCrowdData) ||
                other.shareAnonCrowdData == shareAnonCrowdData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode, useMetric,
      pushEnabled, inAppHintsEnabled, shareAnonCrowdData);

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsImplCopyWith<_$AppSettingsImpl> get copyWith =>
      __$$AppSettingsImplCopyWithImpl<_$AppSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsImplToJson(
      this,
    );
  }
}

abstract class _AppSettings implements AppSettings {
  const factory _AppSettings(
      {final String languageCode,
      final bool useMetric,
      final bool pushEnabled,
      final bool inAppHintsEnabled,
      final bool shareAnonCrowdData}) = _$AppSettingsImpl;

  factory _AppSettings.fromJson(Map<String, dynamic> json) =
      _$AppSettingsImpl.fromJson;

// i18n
  @override
  String get languageCode; // 'en', 'ro' (ready to expand)
// units
  @override
  bool get useMetric; // km/°C vs mi/°F
// notifications
  @override
  bool get pushEnabled;
  @override
  bool get inAppHintsEnabled; // privacy
  @override
  bool get shareAnonCrowdData;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsImplCopyWith<_$AppSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
