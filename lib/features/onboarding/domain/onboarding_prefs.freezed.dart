// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_prefs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingPrefs {

 String get city; DateTime get startDate; int get days; String get budget;// $, $$, $$$
 List<String> get interests;
/// Create a copy of OnboardingPrefs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingPrefsCopyWith<OnboardingPrefs> get copyWith => _$OnboardingPrefsCopyWithImpl<OnboardingPrefs>(this as OnboardingPrefs, _$identity);

  /// Serializes this OnboardingPrefs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingPrefs&&(identical(other.city, city) || other.city == city)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.days, days) || other.days == days)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other.interests, interests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,startDate,days,budget,const DeepCollectionEquality().hash(interests));

@override
String toString() {
  return 'OnboardingPrefs(city: $city, startDate: $startDate, days: $days, budget: $budget, interests: $interests)';
}


}

/// @nodoc
abstract mixin class $OnboardingPrefsCopyWith<$Res>  {
  factory $OnboardingPrefsCopyWith(OnboardingPrefs value, $Res Function(OnboardingPrefs) _then) = _$OnboardingPrefsCopyWithImpl;
@useResult
$Res call({
 String city, DateTime startDate, int days, String budget, List<String> interests
});




}
/// @nodoc
class _$OnboardingPrefsCopyWithImpl<$Res>
    implements $OnboardingPrefsCopyWith<$Res> {
  _$OnboardingPrefsCopyWithImpl(this._self, this._then);

  final OnboardingPrefs _self;
  final $Res Function(OnboardingPrefs) _then;

/// Create a copy of OnboardingPrefs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? startDate = null,Object? days = null,Object? budget = null,Object? interests = null,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as String,interests: null == interests ? _self.interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingPrefs].
extension OnboardingPrefsPatterns on OnboardingPrefs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingPrefs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingPrefs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingPrefs value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingPrefs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingPrefs value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingPrefs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String city,  DateTime startDate,  int days,  String budget,  List<String> interests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingPrefs() when $default != null:
return $default(_that.city,_that.startDate,_that.days,_that.budget,_that.interests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String city,  DateTime startDate,  int days,  String budget,  List<String> interests)  $default,) {final _that = this;
switch (_that) {
case _OnboardingPrefs():
return $default(_that.city,_that.startDate,_that.days,_that.budget,_that.interests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String city,  DateTime startDate,  int days,  String budget,  List<String> interests)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingPrefs() when $default != null:
return $default(_that.city,_that.startDate,_that.days,_that.budget,_that.interests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnboardingPrefs implements OnboardingPrefs {
  const _OnboardingPrefs({required this.city, required this.startDate, required this.days, this.budget = r'$$', final  List<String> interests = const <String>[]}): _interests = interests;
  factory _OnboardingPrefs.fromJson(Map<String, dynamic> json) => _$OnboardingPrefsFromJson(json);

@override final  String city;
@override final  DateTime startDate;
@override final  int days;
@override@JsonKey() final  String budget;
// $, $$, $$$
 final  List<String> _interests;
// $, $$, $$$
@override@JsonKey() List<String> get interests {
  if (_interests is EqualUnmodifiableListView) return _interests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interests);
}


/// Create a copy of OnboardingPrefs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingPrefsCopyWith<_OnboardingPrefs> get copyWith => __$OnboardingPrefsCopyWithImpl<_OnboardingPrefs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnboardingPrefsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingPrefs&&(identical(other.city, city) || other.city == city)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.days, days) || other.days == days)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other._interests, _interests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,startDate,days,budget,const DeepCollectionEquality().hash(_interests));

@override
String toString() {
  return 'OnboardingPrefs(city: $city, startDate: $startDate, days: $days, budget: $budget, interests: $interests)';
}


}

/// @nodoc
abstract mixin class _$OnboardingPrefsCopyWith<$Res> implements $OnboardingPrefsCopyWith<$Res> {
  factory _$OnboardingPrefsCopyWith(_OnboardingPrefs value, $Res Function(_OnboardingPrefs) _then) = __$OnboardingPrefsCopyWithImpl;
@override @useResult
$Res call({
 String city, DateTime startDate, int days, String budget, List<String> interests
});




}
/// @nodoc
class __$OnboardingPrefsCopyWithImpl<$Res>
    implements _$OnboardingPrefsCopyWith<$Res> {
  __$OnboardingPrefsCopyWithImpl(this._self, this._then);

  final _OnboardingPrefs _self;
  final $Res Function(_OnboardingPrefs) _then;

/// Create a copy of OnboardingPrefs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? startDate = null,Object? days = null,Object? budget = null,Object? interests = null,}) {
  return _then(_OnboardingPrefs(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as String,interests: null == interests ? _self._interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
