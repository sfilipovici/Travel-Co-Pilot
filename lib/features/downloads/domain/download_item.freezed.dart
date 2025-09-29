// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DownloadItem {

 String get id; String get title; int get sizeMB; DownloadType get type; DownloadStatus get status; double get progress;
/// Create a copy of DownloadItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadItemCopyWith<DownloadItem> get copyWith => _$DownloadItemCopyWithImpl<DownloadItem>(this as DownloadItem, _$identity);

  /// Serializes this DownloadItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.sizeMB, sizeMB) || other.sizeMB == sizeMB)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.progress, progress) || other.progress == progress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,sizeMB,type,status,progress);

@override
String toString() {
  return 'DownloadItem(id: $id, title: $title, sizeMB: $sizeMB, type: $type, status: $status, progress: $progress)';
}


}

/// @nodoc
abstract mixin class $DownloadItemCopyWith<$Res>  {
  factory $DownloadItemCopyWith(DownloadItem value, $Res Function(DownloadItem) _then) = _$DownloadItemCopyWithImpl;
@useResult
$Res call({
 String id, String title, int sizeMB, DownloadType type, DownloadStatus status, double progress
});




}
/// @nodoc
class _$DownloadItemCopyWithImpl<$Res>
    implements $DownloadItemCopyWith<$Res> {
  _$DownloadItemCopyWithImpl(this._self, this._then);

  final DownloadItem _self;
  final $Res Function(DownloadItem) _then;

/// Create a copy of DownloadItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? sizeMB = null,Object? type = null,Object? status = null,Object? progress = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sizeMB: null == sizeMB ? _self.sizeMB : sizeMB // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DownloadType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DownloadStatus,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadItem].
extension DownloadItemPatterns on DownloadItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DownloadItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DownloadItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DownloadItem value)  $default,){
final _that = this;
switch (_that) {
case _DownloadItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DownloadItem value)?  $default,){
final _that = this;
switch (_that) {
case _DownloadItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int sizeMB,  DownloadType type,  DownloadStatus status,  double progress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DownloadItem() when $default != null:
return $default(_that.id,_that.title,_that.sizeMB,_that.type,_that.status,_that.progress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int sizeMB,  DownloadType type,  DownloadStatus status,  double progress)  $default,) {final _that = this;
switch (_that) {
case _DownloadItem():
return $default(_that.id,_that.title,_that.sizeMB,_that.type,_that.status,_that.progress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int sizeMB,  DownloadType type,  DownloadStatus status,  double progress)?  $default,) {final _that = this;
switch (_that) {
case _DownloadItem() when $default != null:
return $default(_that.id,_that.title,_that.sizeMB,_that.type,_that.status,_that.progress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DownloadItem implements DownloadItem {
  const _DownloadItem({required this.id, required this.title, required this.sizeMB, required this.type, this.status = DownloadStatus.notStarted, this.progress = 0.0});
  factory _DownloadItem.fromJson(Map<String, dynamic> json) => _$DownloadItemFromJson(json);

@override final  String id;
@override final  String title;
@override final  int sizeMB;
@override final  DownloadType type;
@override@JsonKey() final  DownloadStatus status;
@override@JsonKey() final  double progress;

/// Create a copy of DownloadItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadItemCopyWith<_DownloadItem> get copyWith => __$DownloadItemCopyWithImpl<_DownloadItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DownloadItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.sizeMB, sizeMB) || other.sizeMB == sizeMB)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.progress, progress) || other.progress == progress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,sizeMB,type,status,progress);

@override
String toString() {
  return 'DownloadItem(id: $id, title: $title, sizeMB: $sizeMB, type: $type, status: $status, progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$DownloadItemCopyWith<$Res> implements $DownloadItemCopyWith<$Res> {
  factory _$DownloadItemCopyWith(_DownloadItem value, $Res Function(_DownloadItem) _then) = __$DownloadItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int sizeMB, DownloadType type, DownloadStatus status, double progress
});




}
/// @nodoc
class __$DownloadItemCopyWithImpl<$Res>
    implements _$DownloadItemCopyWith<$Res> {
  __$DownloadItemCopyWithImpl(this._self, this._then);

  final _DownloadItem _self;
  final $Res Function(_DownloadItem) _then;

/// Create a copy of DownloadItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? sizeMB = null,Object? type = null,Object? status = null,Object? progress = null,}) {
  return _then(_DownloadItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sizeMB: null == sizeMB ? _self.sizeMB : sizeMB // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DownloadType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DownloadStatus,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
