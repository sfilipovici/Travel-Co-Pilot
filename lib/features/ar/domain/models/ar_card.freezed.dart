// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ar_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AROverlay {

 String get id; String get type;
/// Create a copy of AROverlay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AROverlayCopyWith<AROverlay> get copyWith => _$AROverlayCopyWithImpl<AROverlay>(this as AROverlay, _$identity);

  /// Serializes this AROverlay to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AROverlay&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type);

@override
String toString() {
  return 'AROverlay(id: $id, type: $type)';
}


}

/// @nodoc
abstract mixin class $AROverlayCopyWith<$Res>  {
  factory $AROverlayCopyWith(AROverlay value, $Res Function(AROverlay) _then) = _$AROverlayCopyWithImpl;
@useResult
$Res call({
 String id, String type
});




}
/// @nodoc
class _$AROverlayCopyWithImpl<$Res>
    implements $AROverlayCopyWith<$Res> {
  _$AROverlayCopyWithImpl(this._self, this._then);

  final AROverlay _self;
  final $Res Function(AROverlay) _then;

/// Create a copy of AROverlay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AROverlay].
extension AROverlayPatterns on AROverlay {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AROverlay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AROverlay() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AROverlay value)  $default,){
final _that = this;
switch (_that) {
case _AROverlay():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AROverlay value)?  $default,){
final _that = this;
switch (_that) {
case _AROverlay() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AROverlay() when $default != null:
return $default(_that.id,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type)  $default,) {final _that = this;
switch (_that) {
case _AROverlay():
return $default(_that.id,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type)?  $default,) {final _that = this;
switch (_that) {
case _AROverlay() when $default != null:
return $default(_that.id,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AROverlay implements AROverlay {
  const _AROverlay({required this.id, this.type = 'marker'});
  factory _AROverlay.fromJson(Map<String, dynamic> json) => _$AROverlayFromJson(json);

@override final  String id;
@override@JsonKey() final  String type;

/// Create a copy of AROverlay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AROverlayCopyWith<_AROverlay> get copyWith => __$AROverlayCopyWithImpl<_AROverlay>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AROverlayToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AROverlay&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type);

@override
String toString() {
  return 'AROverlay(id: $id, type: $type)';
}


}

/// @nodoc
abstract mixin class _$AROverlayCopyWith<$Res> implements $AROverlayCopyWith<$Res> {
  factory _$AROverlayCopyWith(_AROverlay value, $Res Function(_AROverlay) _then) = __$AROverlayCopyWithImpl;
@override @useResult
$Res call({
 String id, String type
});




}
/// @nodoc
class __$AROverlayCopyWithImpl<$Res>
    implements _$AROverlayCopyWith<$Res> {
  __$AROverlayCopyWithImpl(this._self, this._then);

  final _AROverlay _self;
  final $Res Function(_AROverlay) _then;

/// Create a copy of AROverlay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,}) {
  return _then(_AROverlay(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ARCard {

 String get arCardId; String get poiId; String get shortStory; String get audioUrl; List<AROverlay> get overlays;
/// Create a copy of ARCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ARCardCopyWith<ARCard> get copyWith => _$ARCardCopyWithImpl<ARCard>(this as ARCard, _$identity);

  /// Serializes this ARCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ARCard&&(identical(other.arCardId, arCardId) || other.arCardId == arCardId)&&(identical(other.poiId, poiId) || other.poiId == poiId)&&(identical(other.shortStory, shortStory) || other.shortStory == shortStory)&&(identical(other.audioUrl, audioUrl) || other.audioUrl == audioUrl)&&const DeepCollectionEquality().equals(other.overlays, overlays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arCardId,poiId,shortStory,audioUrl,const DeepCollectionEquality().hash(overlays));

@override
String toString() {
  return 'ARCard(arCardId: $arCardId, poiId: $poiId, shortStory: $shortStory, audioUrl: $audioUrl, overlays: $overlays)';
}


}

/// @nodoc
abstract mixin class $ARCardCopyWith<$Res>  {
  factory $ARCardCopyWith(ARCard value, $Res Function(ARCard) _then) = _$ARCardCopyWithImpl;
@useResult
$Res call({
 String arCardId, String poiId, String shortStory, String audioUrl, List<AROverlay> overlays
});




}
/// @nodoc
class _$ARCardCopyWithImpl<$Res>
    implements $ARCardCopyWith<$Res> {
  _$ARCardCopyWithImpl(this._self, this._then);

  final ARCard _self;
  final $Res Function(ARCard) _then;

/// Create a copy of ARCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? arCardId = null,Object? poiId = null,Object? shortStory = null,Object? audioUrl = null,Object? overlays = null,}) {
  return _then(_self.copyWith(
arCardId: null == arCardId ? _self.arCardId : arCardId // ignore: cast_nullable_to_non_nullable
as String,poiId: null == poiId ? _self.poiId : poiId // ignore: cast_nullable_to_non_nullable
as String,shortStory: null == shortStory ? _self.shortStory : shortStory // ignore: cast_nullable_to_non_nullable
as String,audioUrl: null == audioUrl ? _self.audioUrl : audioUrl // ignore: cast_nullable_to_non_nullable
as String,overlays: null == overlays ? _self.overlays : overlays // ignore: cast_nullable_to_non_nullable
as List<AROverlay>,
  ));
}

}


/// Adds pattern-matching-related methods to [ARCard].
extension ARCardPatterns on ARCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ARCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ARCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ARCard value)  $default,){
final _that = this;
switch (_that) {
case _ARCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ARCard value)?  $default,){
final _that = this;
switch (_that) {
case _ARCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String arCardId,  String poiId,  String shortStory,  String audioUrl,  List<AROverlay> overlays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ARCard() when $default != null:
return $default(_that.arCardId,_that.poiId,_that.shortStory,_that.audioUrl,_that.overlays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String arCardId,  String poiId,  String shortStory,  String audioUrl,  List<AROverlay> overlays)  $default,) {final _that = this;
switch (_that) {
case _ARCard():
return $default(_that.arCardId,_that.poiId,_that.shortStory,_that.audioUrl,_that.overlays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String arCardId,  String poiId,  String shortStory,  String audioUrl,  List<AROverlay> overlays)?  $default,) {final _that = this;
switch (_that) {
case _ARCard() when $default != null:
return $default(_that.arCardId,_that.poiId,_that.shortStory,_that.audioUrl,_that.overlays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ARCard implements ARCard {
  const _ARCard({required this.arCardId, required this.poiId, required this.shortStory, this.audioUrl = '', final  List<AROverlay> overlays = const <AROverlay>[]}): _overlays = overlays;
  factory _ARCard.fromJson(Map<String, dynamic> json) => _$ARCardFromJson(json);

@override final  String arCardId;
@override final  String poiId;
@override final  String shortStory;
@override@JsonKey() final  String audioUrl;
 final  List<AROverlay> _overlays;
@override@JsonKey() List<AROverlay> get overlays {
  if (_overlays is EqualUnmodifiableListView) return _overlays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_overlays);
}


/// Create a copy of ARCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ARCardCopyWith<_ARCard> get copyWith => __$ARCardCopyWithImpl<_ARCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ARCardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ARCard&&(identical(other.arCardId, arCardId) || other.arCardId == arCardId)&&(identical(other.poiId, poiId) || other.poiId == poiId)&&(identical(other.shortStory, shortStory) || other.shortStory == shortStory)&&(identical(other.audioUrl, audioUrl) || other.audioUrl == audioUrl)&&const DeepCollectionEquality().equals(other._overlays, _overlays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,arCardId,poiId,shortStory,audioUrl,const DeepCollectionEquality().hash(_overlays));

@override
String toString() {
  return 'ARCard(arCardId: $arCardId, poiId: $poiId, shortStory: $shortStory, audioUrl: $audioUrl, overlays: $overlays)';
}


}

/// @nodoc
abstract mixin class _$ARCardCopyWith<$Res> implements $ARCardCopyWith<$Res> {
  factory _$ARCardCopyWith(_ARCard value, $Res Function(_ARCard) _then) = __$ARCardCopyWithImpl;
@override @useResult
$Res call({
 String arCardId, String poiId, String shortStory, String audioUrl, List<AROverlay> overlays
});




}
/// @nodoc
class __$ARCardCopyWithImpl<$Res>
    implements _$ARCardCopyWith<$Res> {
  __$ARCardCopyWithImpl(this._self, this._then);

  final _ARCard _self;
  final $Res Function(_ARCard) _then;

/// Create a copy of ARCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? arCardId = null,Object? poiId = null,Object? shortStory = null,Object? audioUrl = null,Object? overlays = null,}) {
  return _then(_ARCard(
arCardId: null == arCardId ? _self.arCardId : arCardId // ignore: cast_nullable_to_non_nullable
as String,poiId: null == poiId ? _self.poiId : poiId // ignore: cast_nullable_to_non_nullable
as String,shortStory: null == shortStory ? _self.shortStory : shortStory // ignore: cast_nullable_to_non_nullable
as String,audioUrl: null == audioUrl ? _self.audioUrl : audioUrl // ignore: cast_nullable_to_non_nullable
as String,overlays: null == overlays ? _self._overlays : overlays // ignore: cast_nullable_to_non_nullable
as List<AROverlay>,
  ));
}


}

// dart format on
