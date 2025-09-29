// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Trail {

 String get trailId; String get name; List<TrailCheckpoint> get checkpoints; String get bundleUrl; int get sizeMB;
/// Create a copy of Trail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrailCopyWith<Trail> get copyWith => _$TrailCopyWithImpl<Trail>(this as Trail, _$identity);

  /// Serializes this Trail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Trail&&(identical(other.trailId, trailId) || other.trailId == trailId)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.checkpoints, checkpoints)&&(identical(other.bundleUrl, bundleUrl) || other.bundleUrl == bundleUrl)&&(identical(other.sizeMB, sizeMB) || other.sizeMB == sizeMB));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trailId,name,const DeepCollectionEquality().hash(checkpoints),bundleUrl,sizeMB);

@override
String toString() {
  return 'Trail(trailId: $trailId, name: $name, checkpoints: $checkpoints, bundleUrl: $bundleUrl, sizeMB: $sizeMB)';
}


}

/// @nodoc
abstract mixin class $TrailCopyWith<$Res>  {
  factory $TrailCopyWith(Trail value, $Res Function(Trail) _then) = _$TrailCopyWithImpl;
@useResult
$Res call({
 String trailId, String name, List<TrailCheckpoint> checkpoints, String bundleUrl, int sizeMB
});




}
/// @nodoc
class _$TrailCopyWithImpl<$Res>
    implements $TrailCopyWith<$Res> {
  _$TrailCopyWithImpl(this._self, this._then);

  final Trail _self;
  final $Res Function(Trail) _then;

/// Create a copy of Trail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trailId = null,Object? name = null,Object? checkpoints = null,Object? bundleUrl = null,Object? sizeMB = null,}) {
  return _then(_self.copyWith(
trailId: null == trailId ? _self.trailId : trailId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,checkpoints: null == checkpoints ? _self.checkpoints : checkpoints // ignore: cast_nullable_to_non_nullable
as List<TrailCheckpoint>,bundleUrl: null == bundleUrl ? _self.bundleUrl : bundleUrl // ignore: cast_nullable_to_non_nullable
as String,sizeMB: null == sizeMB ? _self.sizeMB : sizeMB // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Trail].
extension TrailPatterns on Trail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Trail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Trail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Trail value)  $default,){
final _that = this;
switch (_that) {
case _Trail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Trail value)?  $default,){
final _that = this;
switch (_that) {
case _Trail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String trailId,  String name,  List<TrailCheckpoint> checkpoints,  String bundleUrl,  int sizeMB)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Trail() when $default != null:
return $default(_that.trailId,_that.name,_that.checkpoints,_that.bundleUrl,_that.sizeMB);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String trailId,  String name,  List<TrailCheckpoint> checkpoints,  String bundleUrl,  int sizeMB)  $default,) {final _that = this;
switch (_that) {
case _Trail():
return $default(_that.trailId,_that.name,_that.checkpoints,_that.bundleUrl,_that.sizeMB);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String trailId,  String name,  List<TrailCheckpoint> checkpoints,  String bundleUrl,  int sizeMB)?  $default,) {final _that = this;
switch (_that) {
case _Trail() when $default != null:
return $default(_that.trailId,_that.name,_that.checkpoints,_that.bundleUrl,_that.sizeMB);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Trail implements Trail {
  const _Trail({required this.trailId, required this.name, final  List<TrailCheckpoint> checkpoints = const <TrailCheckpoint>[], this.bundleUrl = '', this.sizeMB = 0}): _checkpoints = checkpoints;
  factory _Trail.fromJson(Map<String, dynamic> json) => _$TrailFromJson(json);

@override final  String trailId;
@override final  String name;
 final  List<TrailCheckpoint> _checkpoints;
@override@JsonKey() List<TrailCheckpoint> get checkpoints {
  if (_checkpoints is EqualUnmodifiableListView) return _checkpoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_checkpoints);
}

@override@JsonKey() final  String bundleUrl;
@override@JsonKey() final  int sizeMB;

/// Create a copy of Trail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrailCopyWith<_Trail> get copyWith => __$TrailCopyWithImpl<_Trail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trail&&(identical(other.trailId, trailId) || other.trailId == trailId)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._checkpoints, _checkpoints)&&(identical(other.bundleUrl, bundleUrl) || other.bundleUrl == bundleUrl)&&(identical(other.sizeMB, sizeMB) || other.sizeMB == sizeMB));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trailId,name,const DeepCollectionEquality().hash(_checkpoints),bundleUrl,sizeMB);

@override
String toString() {
  return 'Trail(trailId: $trailId, name: $name, checkpoints: $checkpoints, bundleUrl: $bundleUrl, sizeMB: $sizeMB)';
}


}

/// @nodoc
abstract mixin class _$TrailCopyWith<$Res> implements $TrailCopyWith<$Res> {
  factory _$TrailCopyWith(_Trail value, $Res Function(_Trail) _then) = __$TrailCopyWithImpl;
@override @useResult
$Res call({
 String trailId, String name, List<TrailCheckpoint> checkpoints, String bundleUrl, int sizeMB
});




}
/// @nodoc
class __$TrailCopyWithImpl<$Res>
    implements _$TrailCopyWith<$Res> {
  __$TrailCopyWithImpl(this._self, this._then);

  final _Trail _self;
  final $Res Function(_Trail) _then;

/// Create a copy of Trail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trailId = null,Object? name = null,Object? checkpoints = null,Object? bundleUrl = null,Object? sizeMB = null,}) {
  return _then(_Trail(
trailId: null == trailId ? _self.trailId : trailId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,checkpoints: null == checkpoints ? _self._checkpoints : checkpoints // ignore: cast_nullable_to_non_nullable
as List<TrailCheckpoint>,bundleUrl: null == bundleUrl ? _self.bundleUrl : bundleUrl // ignore: cast_nullable_to_non_nullable
as String,sizeMB: null == sizeMB ? _self.sizeMB : sizeMB // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TrailCheckpoint {

 String get title; LatLng get coords; String get hint;
/// Create a copy of TrailCheckpoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrailCheckpointCopyWith<TrailCheckpoint> get copyWith => _$TrailCheckpointCopyWithImpl<TrailCheckpoint>(this as TrailCheckpoint, _$identity);

  /// Serializes this TrailCheckpoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrailCheckpoint&&(identical(other.title, title) || other.title == title)&&(identical(other.coords, coords) || other.coords == coords)&&(identical(other.hint, hint) || other.hint == hint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,coords,hint);

@override
String toString() {
  return 'TrailCheckpoint(title: $title, coords: $coords, hint: $hint)';
}


}

/// @nodoc
abstract mixin class $TrailCheckpointCopyWith<$Res>  {
  factory $TrailCheckpointCopyWith(TrailCheckpoint value, $Res Function(TrailCheckpoint) _then) = _$TrailCheckpointCopyWithImpl;
@useResult
$Res call({
 String title, LatLng coords, String hint
});


$LatLngCopyWith<$Res> get coords;

}
/// @nodoc
class _$TrailCheckpointCopyWithImpl<$Res>
    implements $TrailCheckpointCopyWith<$Res> {
  _$TrailCheckpointCopyWithImpl(this._self, this._then);

  final TrailCheckpoint _self;
  final $Res Function(TrailCheckpoint) _then;

/// Create a copy of TrailCheckpoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? coords = null,Object? hint = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,coords: null == coords ? _self.coords : coords // ignore: cast_nullable_to_non_nullable
as LatLng,hint: null == hint ? _self.hint : hint // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TrailCheckpoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get coords {
  
  return $LatLngCopyWith<$Res>(_self.coords, (value) {
    return _then(_self.copyWith(coords: value));
  });
}
}


/// Adds pattern-matching-related methods to [TrailCheckpoint].
extension TrailCheckpointPatterns on TrailCheckpoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrailCheckpoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrailCheckpoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrailCheckpoint value)  $default,){
final _that = this;
switch (_that) {
case _TrailCheckpoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrailCheckpoint value)?  $default,){
final _that = this;
switch (_that) {
case _TrailCheckpoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  LatLng coords,  String hint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrailCheckpoint() when $default != null:
return $default(_that.title,_that.coords,_that.hint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  LatLng coords,  String hint)  $default,) {final _that = this;
switch (_that) {
case _TrailCheckpoint():
return $default(_that.title,_that.coords,_that.hint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  LatLng coords,  String hint)?  $default,) {final _that = this;
switch (_that) {
case _TrailCheckpoint() when $default != null:
return $default(_that.title,_that.coords,_that.hint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrailCheckpoint implements TrailCheckpoint {
  const _TrailCheckpoint({required this.title, required this.coords, this.hint = ''});
  factory _TrailCheckpoint.fromJson(Map<String, dynamic> json) => _$TrailCheckpointFromJson(json);

@override final  String title;
@override final  LatLng coords;
@override@JsonKey() final  String hint;

/// Create a copy of TrailCheckpoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrailCheckpointCopyWith<_TrailCheckpoint> get copyWith => __$TrailCheckpointCopyWithImpl<_TrailCheckpoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrailCheckpointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrailCheckpoint&&(identical(other.title, title) || other.title == title)&&(identical(other.coords, coords) || other.coords == coords)&&(identical(other.hint, hint) || other.hint == hint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,coords,hint);

@override
String toString() {
  return 'TrailCheckpoint(title: $title, coords: $coords, hint: $hint)';
}


}

/// @nodoc
abstract mixin class _$TrailCheckpointCopyWith<$Res> implements $TrailCheckpointCopyWith<$Res> {
  factory _$TrailCheckpointCopyWith(_TrailCheckpoint value, $Res Function(_TrailCheckpoint) _then) = __$TrailCheckpointCopyWithImpl;
@override @useResult
$Res call({
 String title, LatLng coords, String hint
});


@override $LatLngCopyWith<$Res> get coords;

}
/// @nodoc
class __$TrailCheckpointCopyWithImpl<$Res>
    implements _$TrailCheckpointCopyWith<$Res> {
  __$TrailCheckpointCopyWithImpl(this._self, this._then);

  final _TrailCheckpoint _self;
  final $Res Function(_TrailCheckpoint) _then;

/// Create a copy of TrailCheckpoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? coords = null,Object? hint = null,}) {
  return _then(_TrailCheckpoint(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,coords: null == coords ? _self.coords : coords // ignore: cast_nullable_to_non_nullable
as LatLng,hint: null == hint ? _self.hint : hint // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TrailCheckpoint
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get coords {
  
  return $LatLngCopyWith<$Res>(_self.coords, (value) {
    return _then(_self.copyWith(coords: value));
  });
}
}

// dart format on
