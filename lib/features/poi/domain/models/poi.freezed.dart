// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

POI _$POIFromJson(Map<String, dynamic> json) {
  return _POI.fromJson(json);
}

/// @nodoc
mixin _$POI {
  String get poiId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get priceLevel => throw _privateConstructorUsedError;
  LatLng get coords => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<OpeningHour> get openingHours => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<String> get sourceRefs => throw _privateConstructorUsedError;

  /// Serializes this POI to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of POI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $POICopyWith<POI> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $POICopyWith<$Res> {
  factory $POICopyWith(POI value, $Res Function(POI) then) =
      _$POICopyWithImpl<$Res, POI>;
  @useResult
  $Res call(
      {String poiId,
      String name,
      String category,
      int priceLevel,
      LatLng coords,
      double rating,
      String address,
      List<OpeningHour> openingHours,
      List<String> images,
      List<String> sourceRefs});

  $LatLngCopyWith<$Res> get coords;
}

/// @nodoc
class _$POICopyWithImpl<$Res, $Val extends POI> implements $POICopyWith<$Res> {
  _$POICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of POI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poiId = null,
    Object? name = null,
    Object? category = null,
    Object? priceLevel = null,
    Object? coords = null,
    Object? rating = null,
    Object? address = null,
    Object? openingHours = null,
    Object? images = null,
    Object? sourceRefs = null,
  }) {
    return _then(_value.copyWith(
      poiId: null == poiId
          ? _value.poiId
          : poiId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      priceLevel: null == priceLevel
          ? _value.priceLevel
          : priceLevel // ignore: cast_nullable_to_non_nullable
              as int,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as LatLng,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<OpeningHour>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sourceRefs: null == sourceRefs
          ? _value.sourceRefs
          : sourceRefs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of POI
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
abstract class _$$POIImplCopyWith<$Res> implements $POICopyWith<$Res> {
  factory _$$POIImplCopyWith(_$POIImpl value, $Res Function(_$POIImpl) then) =
      __$$POIImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String poiId,
      String name,
      String category,
      int priceLevel,
      LatLng coords,
      double rating,
      String address,
      List<OpeningHour> openingHours,
      List<String> images,
      List<String> sourceRefs});

  @override
  $LatLngCopyWith<$Res> get coords;
}

/// @nodoc
class __$$POIImplCopyWithImpl<$Res> extends _$POICopyWithImpl<$Res, _$POIImpl>
    implements _$$POIImplCopyWith<$Res> {
  __$$POIImplCopyWithImpl(_$POIImpl _value, $Res Function(_$POIImpl) _then)
      : super(_value, _then);

  /// Create a copy of POI
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? poiId = null,
    Object? name = null,
    Object? category = null,
    Object? priceLevel = null,
    Object? coords = null,
    Object? rating = null,
    Object? address = null,
    Object? openingHours = null,
    Object? images = null,
    Object? sourceRefs = null,
  }) {
    return _then(_$POIImpl(
      poiId: null == poiId
          ? _value.poiId
          : poiId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      priceLevel: null == priceLevel
          ? _value.priceLevel
          : priceLevel // ignore: cast_nullable_to_non_nullable
              as int,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as LatLng,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _value._openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as List<OpeningHour>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sourceRefs: null == sourceRefs
          ? _value._sourceRefs
          : sourceRefs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$POIImpl implements _POI {
  const _$POIImpl(
      {required this.poiId,
      required this.name,
      required this.category,
      required this.priceLevel,
      required this.coords,
      this.rating = 0.0,
      this.address = '',
      final List<OpeningHour> openingHours = const <OpeningHour>[],
      final List<String> images = const <String>[],
      final List<String> sourceRefs = const <String>[]})
      : _openingHours = openingHours,
        _images = images,
        _sourceRefs = sourceRefs;

  factory _$POIImpl.fromJson(Map<String, dynamic> json) =>
      _$$POIImplFromJson(json);

  @override
  final String poiId;
  @override
  final String name;
  @override
  final String category;
  @override
  final int priceLevel;
  @override
  final LatLng coords;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final String address;
  final List<OpeningHour> _openingHours;
  @override
  @JsonKey()
  List<OpeningHour> get openingHours {
    if (_openingHours is EqualUnmodifiableListView) return _openingHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openingHours);
  }

  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String> _sourceRefs;
  @override
  @JsonKey()
  List<String> get sourceRefs {
    if (_sourceRefs is EqualUnmodifiableListView) return _sourceRefs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceRefs);
  }

  @override
  String toString() {
    return 'POI(poiId: $poiId, name: $name, category: $category, priceLevel: $priceLevel, coords: $coords, rating: $rating, address: $address, openingHours: $openingHours, images: $images, sourceRefs: $sourceRefs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$POIImpl &&
            (identical(other.poiId, poiId) || other.poiId == poiId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.priceLevel, priceLevel) ||
                other.priceLevel == priceLevel) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._openingHours, _openingHours) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._sourceRefs, _sourceRefs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      poiId,
      name,
      category,
      priceLevel,
      coords,
      rating,
      address,
      const DeepCollectionEquality().hash(_openingHours),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_sourceRefs));

  /// Create a copy of POI
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$POIImplCopyWith<_$POIImpl> get copyWith =>
      __$$POIImplCopyWithImpl<_$POIImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$POIImplToJson(
      this,
    );
  }
}

abstract class _POI implements POI {
  const factory _POI(
      {required final String poiId,
      required final String name,
      required final String category,
      required final int priceLevel,
      required final LatLng coords,
      final double rating,
      final String address,
      final List<OpeningHour> openingHours,
      final List<String> images,
      final List<String> sourceRefs}) = _$POIImpl;

  factory _POI.fromJson(Map<String, dynamic> json) = _$POIImpl.fromJson;

  @override
  String get poiId;
  @override
  String get name;
  @override
  String get category;
  @override
  int get priceLevel;
  @override
  LatLng get coords;
  @override
  double get rating;
  @override
  String get address;
  @override
  List<OpeningHour> get openingHours;
  @override
  List<String> get images;
  @override
  List<String> get sourceRefs;

  /// Create a copy of POI
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$POIImplCopyWith<_$POIImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpeningHour _$OpeningHourFromJson(Map<String, dynamic> json) {
  return _OpeningHour.fromJson(json);
}

/// @nodoc
mixin _$OpeningHour {
  int get weekday => throw _privateConstructorUsedError; // 1=Mon..7=Sun
  String get open => throw _privateConstructorUsedError; // "09:00"
  String get close => throw _privateConstructorUsedError;

  /// Serializes this OpeningHour to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpeningHour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpeningHourCopyWith<OpeningHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHourCopyWith<$Res> {
  factory $OpeningHourCopyWith(
          OpeningHour value, $Res Function(OpeningHour) then) =
      _$OpeningHourCopyWithImpl<$Res, OpeningHour>;
  @useResult
  $Res call({int weekday, String open, String close});
}

/// @nodoc
class _$OpeningHourCopyWithImpl<$Res, $Val extends OpeningHour>
    implements $OpeningHourCopyWith<$Res> {
  _$OpeningHourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpeningHour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekday = null,
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_value.copyWith(
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpeningHourImplCopyWith<$Res>
    implements $OpeningHourCopyWith<$Res> {
  factory _$$OpeningHourImplCopyWith(
          _$OpeningHourImpl value, $Res Function(_$OpeningHourImpl) then) =
      __$$OpeningHourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int weekday, String open, String close});
}

/// @nodoc
class __$$OpeningHourImplCopyWithImpl<$Res>
    extends _$OpeningHourCopyWithImpl<$Res, _$OpeningHourImpl>
    implements _$$OpeningHourImplCopyWith<$Res> {
  __$$OpeningHourImplCopyWithImpl(
      _$OpeningHourImpl _value, $Res Function(_$OpeningHourImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpeningHour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekday = null,
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_$OpeningHourImpl(
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpeningHourImpl implements _OpeningHour {
  const _$OpeningHourImpl(
      {required this.weekday, required this.open, required this.close});

  factory _$OpeningHourImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHourImplFromJson(json);

  @override
  final int weekday;
// 1=Mon..7=Sun
  @override
  final String open;
// "09:00"
  @override
  final String close;

  @override
  String toString() {
    return 'OpeningHour(weekday: $weekday, open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHourImpl &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weekday, open, close);

  /// Create a copy of OpeningHour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHourImplCopyWith<_$OpeningHourImpl> get copyWith =>
      __$$OpeningHourImplCopyWithImpl<_$OpeningHourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHourImplToJson(
      this,
    );
  }
}

abstract class _OpeningHour implements OpeningHour {
  const factory _OpeningHour(
      {required final int weekday,
      required final String open,
      required final String close}) = _$OpeningHourImpl;

  factory _OpeningHour.fromJson(Map<String, dynamic> json) =
      _$OpeningHourImpl.fromJson;

  @override
  int get weekday; // 1=Mon..7=Sun
  @override
  String get open; // "09:00"
  @override
  String get close;

  /// Create a copy of OpeningHour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpeningHourImplCopyWith<_$OpeningHourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
