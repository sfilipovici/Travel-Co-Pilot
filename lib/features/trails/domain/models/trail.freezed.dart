// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trail _$TrailFromJson(Map<String, dynamic> json) {
  return _Trail.fromJson(json);
}

/// @nodoc
mixin _$Trail {
  String get trailId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<TrailCheckpoint> get checkpoints => throw _privateConstructorUsedError;
  String get bundleUrl => throw _privateConstructorUsedError;
  int get sizeMB => throw _privateConstructorUsedError;

  /// Serializes this Trail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrailCopyWith<Trail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailCopyWith<$Res> {
  factory $TrailCopyWith(Trail value, $Res Function(Trail) then) =
      _$TrailCopyWithImpl<$Res, Trail>;
  @useResult
  $Res call(
      {String trailId,
      String name,
      List<TrailCheckpoint> checkpoints,
      String bundleUrl,
      int sizeMB});
}

/// @nodoc
class _$TrailCopyWithImpl<$Res, $Val extends Trail>
    implements $TrailCopyWith<$Res> {
  _$TrailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailId = null,
    Object? name = null,
    Object? checkpoints = null,
    Object? bundleUrl = null,
    Object? sizeMB = null,
  }) {
    return _then(_value.copyWith(
      trailId: null == trailId
          ? _value.trailId
          : trailId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      checkpoints: null == checkpoints
          ? _value.checkpoints
          : checkpoints // ignore: cast_nullable_to_non_nullable
              as List<TrailCheckpoint>,
      bundleUrl: null == bundleUrl
          ? _value.bundleUrl
          : bundleUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sizeMB: null == sizeMB
          ? _value.sizeMB
          : sizeMB // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrailImplCopyWith<$Res> implements $TrailCopyWith<$Res> {
  factory _$$TrailImplCopyWith(
          _$TrailImpl value, $Res Function(_$TrailImpl) then) =
      __$$TrailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String trailId,
      String name,
      List<TrailCheckpoint> checkpoints,
      String bundleUrl,
      int sizeMB});
}

/// @nodoc
class __$$TrailImplCopyWithImpl<$Res>
    extends _$TrailCopyWithImpl<$Res, _$TrailImpl>
    implements _$$TrailImplCopyWith<$Res> {
  __$$TrailImplCopyWithImpl(
      _$TrailImpl _value, $Res Function(_$TrailImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailId = null,
    Object? name = null,
    Object? checkpoints = null,
    Object? bundleUrl = null,
    Object? sizeMB = null,
  }) {
    return _then(_$TrailImpl(
      trailId: null == trailId
          ? _value.trailId
          : trailId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      checkpoints: null == checkpoints
          ? _value._checkpoints
          : checkpoints // ignore: cast_nullable_to_non_nullable
              as List<TrailCheckpoint>,
      bundleUrl: null == bundleUrl
          ? _value.bundleUrl
          : bundleUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sizeMB: null == sizeMB
          ? _value.sizeMB
          : sizeMB // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrailImpl implements _Trail {
  const _$TrailImpl(
      {required this.trailId,
      required this.name,
      final List<TrailCheckpoint> checkpoints = const <TrailCheckpoint>[],
      this.bundleUrl = '',
      this.sizeMB = 0})
      : _checkpoints = checkpoints;

  factory _$TrailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrailImplFromJson(json);

  @override
  final String trailId;
  @override
  final String name;
  final List<TrailCheckpoint> _checkpoints;
  @override
  @JsonKey()
  List<TrailCheckpoint> get checkpoints {
    if (_checkpoints is EqualUnmodifiableListView) return _checkpoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkpoints);
  }

  @override
  @JsonKey()
  final String bundleUrl;
  @override
  @JsonKey()
  final int sizeMB;

  @override
  String toString() {
    return 'Trail(trailId: $trailId, name: $name, checkpoints: $checkpoints, bundleUrl: $bundleUrl, sizeMB: $sizeMB)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrailImpl &&
            (identical(other.trailId, trailId) || other.trailId == trailId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._checkpoints, _checkpoints) &&
            (identical(other.bundleUrl, bundleUrl) ||
                other.bundleUrl == bundleUrl) &&
            (identical(other.sizeMB, sizeMB) || other.sizeMB == sizeMB));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, trailId, name,
      const DeepCollectionEquality().hash(_checkpoints), bundleUrl, sizeMB);

  /// Create a copy of Trail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrailImplCopyWith<_$TrailImpl> get copyWith =>
      __$$TrailImplCopyWithImpl<_$TrailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrailImplToJson(
      this,
    );
  }
}

abstract class _Trail implements Trail {
  const factory _Trail(
      {required final String trailId,
      required final String name,
      final List<TrailCheckpoint> checkpoints,
      final String bundleUrl,
      final int sizeMB}) = _$TrailImpl;

  factory _Trail.fromJson(Map<String, dynamic> json) = _$TrailImpl.fromJson;

  @override
  String get trailId;
  @override
  String get name;
  @override
  List<TrailCheckpoint> get checkpoints;
  @override
  String get bundleUrl;
  @override
  int get sizeMB;

  /// Create a copy of Trail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrailImplCopyWith<_$TrailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrailCheckpoint _$TrailCheckpointFromJson(Map<String, dynamic> json) {
  return _TrailCheckpoint.fromJson(json);
}

/// @nodoc
mixin _$TrailCheckpoint {
  String get title => throw _privateConstructorUsedError;
  LatLng get coords => throw _privateConstructorUsedError;
  String get hint => throw _privateConstructorUsedError;

  /// Serializes this TrailCheckpoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrailCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrailCheckpointCopyWith<TrailCheckpoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailCheckpointCopyWith<$Res> {
  factory $TrailCheckpointCopyWith(
          TrailCheckpoint value, $Res Function(TrailCheckpoint) then) =
      _$TrailCheckpointCopyWithImpl<$Res, TrailCheckpoint>;
  @useResult
  $Res call({String title, LatLng coords, String hint});

  $LatLngCopyWith<$Res> get coords;
}

/// @nodoc
class _$TrailCheckpointCopyWithImpl<$Res, $Val extends TrailCheckpoint>
    implements $TrailCheckpointCopyWith<$Res> {
  _$TrailCheckpointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrailCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? coords = null,
    Object? hint = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as LatLng,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TrailCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res> get coords {
    return $LatLngCopyWith<$Res>(_value.coords, (value) {
      return _then(_value.copyWith(coords: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrailCheckpointImplCopyWith<$Res>
    implements $TrailCheckpointCopyWith<$Res> {
  factory _$$TrailCheckpointImplCopyWith(_$TrailCheckpointImpl value,
          $Res Function(_$TrailCheckpointImpl) then) =
      __$$TrailCheckpointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, LatLng coords, String hint});

  @override
  $LatLngCopyWith<$Res> get coords;
}

/// @nodoc
class __$$TrailCheckpointImplCopyWithImpl<$Res>
    extends _$TrailCheckpointCopyWithImpl<$Res, _$TrailCheckpointImpl>
    implements _$$TrailCheckpointImplCopyWith<$Res> {
  __$$TrailCheckpointImplCopyWithImpl(
      _$TrailCheckpointImpl _value, $Res Function(_$TrailCheckpointImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrailCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? coords = null,
    Object? hint = null,
  }) {
    return _then(_$TrailCheckpointImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as LatLng,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrailCheckpointImpl implements _TrailCheckpoint {
  const _$TrailCheckpointImpl(
      {required this.title, required this.coords, this.hint = ''});

  factory _$TrailCheckpointImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrailCheckpointImplFromJson(json);

  @override
  final String title;
  @override
  final LatLng coords;
  @override
  @JsonKey()
  final String hint;

  @override
  String toString() {
    return 'TrailCheckpoint(title: $title, coords: $coords, hint: $hint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrailCheckpointImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            (identical(other.hint, hint) || other.hint == hint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, coords, hint);

  /// Create a copy of TrailCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrailCheckpointImplCopyWith<_$TrailCheckpointImpl> get copyWith =>
      __$$TrailCheckpointImplCopyWithImpl<_$TrailCheckpointImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrailCheckpointImplToJson(
      this,
    );
  }
}

abstract class _TrailCheckpoint implements TrailCheckpoint {
  const factory _TrailCheckpoint(
      {required final String title,
      required final LatLng coords,
      final String hint}) = _$TrailCheckpointImpl;

  factory _TrailCheckpoint.fromJson(Map<String, dynamic> json) =
      _$TrailCheckpointImpl.fromJson;

  @override
  String get title;
  @override
  LatLng get coords;
  @override
  String get hint;

  /// Create a copy of TrailCheckpoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrailCheckpointImplCopyWith<_$TrailCheckpointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
