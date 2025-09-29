// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppSettings {

 String get languageCode; bool get useMetric; bool get pushEnabled; bool get inAppHintsEnabled; bool get shareAnonCrowdData;
/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<AppSettings> get copyWith => _$AppSettingsCopyWithImpl<AppSettings>(this as AppSettings, _$identity);

  /// Serializes this AppSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettings&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.useMetric, useMetric) || other.useMetric == useMetric)&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.inAppHintsEnabled, inAppHintsEnabled) || other.inAppHintsEnabled == inAppHintsEnabled)&&(identical(other.shareAnonCrowdData, shareAnonCrowdData) || other.shareAnonCrowdData == shareAnonCrowdData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,languageCode,useMetric,pushEnabled,inAppHintsEnabled,shareAnonCrowdData);

@override
String toString() {
  return 'AppSettings(languageCode: $languageCode, useMetric: $useMetric, pushEnabled: $pushEnabled, inAppHintsEnabled: $inAppHintsEnabled, shareAnonCrowdData: $shareAnonCrowdData)';
}


}

/// @nodoc
abstract mixin class $AppSettingsCopyWith<$Res>  {
  factory $AppSettingsCopyWith(AppSettings value, $Res Function(AppSettings) _then) = _$AppSettingsCopyWithImpl;
@useResult
$Res call({
 String languageCode, bool useMetric, bool pushEnabled, bool inAppHintsEnabled, bool shareAnonCrowdData
});




}
/// @nodoc
class _$AppSettingsCopyWithImpl<$Res>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._self, this._then);

  final AppSettings _self;
  final $Res Function(AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languageCode = null,Object? useMetric = null,Object? pushEnabled = null,Object? inAppHintsEnabled = null,Object? shareAnonCrowdData = null,}) {
  return _then(_self.copyWith(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,useMetric: null == useMetric ? _self.useMetric : useMetric // ignore: cast_nullable_to_non_nullable
as bool,pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,inAppHintsEnabled: null == inAppHintsEnabled ? _self.inAppHintsEnabled : inAppHintsEnabled // ignore: cast_nullable_to_non_nullable
as bool,shareAnonCrowdData: null == shareAnonCrowdData ? _self.shareAnonCrowdData : shareAnonCrowdData // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppSettings].
extension AppSettingsPatterns on AppSettings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppSettings value)  $default,){
final _that = this;
switch (_that) {
case _AppSettings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String languageCode,  bool useMetric,  bool pushEnabled,  bool inAppHintsEnabled,  bool shareAnonCrowdData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.languageCode,_that.useMetric,_that.pushEnabled,_that.inAppHintsEnabled,_that.shareAnonCrowdData);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String languageCode,  bool useMetric,  bool pushEnabled,  bool inAppHintsEnabled,  bool shareAnonCrowdData)  $default,) {final _that = this;
switch (_that) {
case _AppSettings():
return $default(_that.languageCode,_that.useMetric,_that.pushEnabled,_that.inAppHintsEnabled,_that.shareAnonCrowdData);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String languageCode,  bool useMetric,  bool pushEnabled,  bool inAppHintsEnabled,  bool shareAnonCrowdData)?  $default,) {final _that = this;
switch (_that) {
case _AppSettings() when $default != null:
return $default(_that.languageCode,_that.useMetric,_that.pushEnabled,_that.inAppHintsEnabled,_that.shareAnonCrowdData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppSettings implements AppSettings {
  const _AppSettings({this.languageCode = 'en', this.useMetric = true, this.pushEnabled = true, this.inAppHintsEnabled = true, this.shareAnonCrowdData = false});
  factory _AppSettings.fromJson(Map<String, dynamic> json) => _$AppSettingsFromJson(json);

@override@JsonKey() final  String languageCode;
@override@JsonKey() final  bool useMetric;
@override@JsonKey() final  bool pushEnabled;
@override@JsonKey() final  bool inAppHintsEnabled;
@override@JsonKey() final  bool shareAnonCrowdData;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingsCopyWith<_AppSettings> get copyWith => __$AppSettingsCopyWithImpl<_AppSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettings&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.useMetric, useMetric) || other.useMetric == useMetric)&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.inAppHintsEnabled, inAppHintsEnabled) || other.inAppHintsEnabled == inAppHintsEnabled)&&(identical(other.shareAnonCrowdData, shareAnonCrowdData) || other.shareAnonCrowdData == shareAnonCrowdData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,languageCode,useMetric,pushEnabled,inAppHintsEnabled,shareAnonCrowdData);

@override
String toString() {
  return 'AppSettings(languageCode: $languageCode, useMetric: $useMetric, pushEnabled: $pushEnabled, inAppHintsEnabled: $inAppHintsEnabled, shareAnonCrowdData: $shareAnonCrowdData)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsCopyWith<$Res> implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsCopyWith(_AppSettings value, $Res Function(_AppSettings) _then) = __$AppSettingsCopyWithImpl;
@override @useResult
$Res call({
 String languageCode, bool useMetric, bool pushEnabled, bool inAppHintsEnabled, bool shareAnonCrowdData
});




}
/// @nodoc
class __$AppSettingsCopyWithImpl<$Res>
    implements _$AppSettingsCopyWith<$Res> {
  __$AppSettingsCopyWithImpl(this._self, this._then);

  final _AppSettings _self;
  final $Res Function(_AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? useMetric = null,Object? pushEnabled = null,Object? inAppHintsEnabled = null,Object? shareAnonCrowdData = null,}) {
  return _then(_AppSettings(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,useMetric: null == useMetric ? _self.useMetric : useMetric // ignore: cast_nullable_to_non_nullable
as bool,pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,inAppHintsEnabled: null == inAppHintsEnabled ? _self.inAppHintsEnabled : inAppHintsEnabled // ignore: cast_nullable_to_non_nullable
as bool,shareAnonCrowdData: null == shareAnonCrowdData ? _self.shareAnonCrowdData : shareAnonCrowdData // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
