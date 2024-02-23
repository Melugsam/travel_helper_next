// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelData _$HotelDataFromJson(Map<String, dynamic> json) {
  return _HotelData.fromJson(json);
}

/// @nodoc
mixin _$HotelData {
  List<Hotel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelDataCopyWith<HotelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelDataCopyWith<$Res> {
  factory $HotelDataCopyWith(HotelData value, $Res Function(HotelData) then) =
      _$HotelDataCopyWithImpl<$Res, HotelData>;
  @useResult
  $Res call({List<Hotel> data});
}

/// @nodoc
class _$HotelDataCopyWithImpl<$Res, $Val extends HotelData>
    implements $HotelDataCopyWith<$Res> {
  _$HotelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelDataImplCopyWith<$Res>
    implements $HotelDataCopyWith<$Res> {
  factory _$$HotelDataImplCopyWith(
          _$HotelDataImpl value, $Res Function(_$HotelDataImpl) then) =
      __$$HotelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Hotel> data});
}

/// @nodoc
class __$$HotelDataImplCopyWithImpl<$Res>
    extends _$HotelDataCopyWithImpl<$Res, _$HotelDataImpl>
    implements _$$HotelDataImplCopyWith<$Res> {
  __$$HotelDataImplCopyWithImpl(
      _$HotelDataImpl _value, $Res Function(_$HotelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HotelDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelDataImpl implements _HotelData {
  const _$HotelDataImpl({required final List<Hotel> data}) : _data = data;

  factory _$HotelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelDataImplFromJson(json);

  final List<Hotel> _data;
  @override
  List<Hotel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HotelData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelDataImplCopyWith<_$HotelDataImpl> get copyWith =>
      __$$HotelDataImplCopyWithImpl<_$HotelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelDataImplToJson(
      this,
    );
  }
}

abstract class _HotelData implements HotelData {
  const factory _HotelData({required final List<Hotel> data}) = _$HotelDataImpl;

  factory _HotelData.fromJson(Map<String, dynamic> json) =
      _$HotelDataImpl.fromJson;

  @override
  List<Hotel> get data;
  @override
  @JsonKey(ignore: true)
  _$$HotelDataImplCopyWith<_$HotelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  return _Hotel.fromJson(json);
}

/// @nodoc
mixin _$Hotel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  BubbleRating get bubbleRating => throw _privateConstructorUsedError;
  List<CardPhotos> get cardPhotos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res, Hotel>;
  @useResult
  $Res call(
      {String id,
      String title,
      BubbleRating bubbleRating,
      List<CardPhotos> cardPhotos});

  $BubbleRatingCopyWith<$Res> get bubbleRating;
}

/// @nodoc
class _$HotelCopyWithImpl<$Res, $Val extends Hotel>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? bubbleRating = null,
    Object? cardPhotos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      bubbleRating: null == bubbleRating
          ? _value.bubbleRating
          : bubbleRating // ignore: cast_nullable_to_non_nullable
              as BubbleRating,
      cardPhotos: null == cardPhotos
          ? _value.cardPhotos
          : cardPhotos // ignore: cast_nullable_to_non_nullable
              as List<CardPhotos>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BubbleRatingCopyWith<$Res> get bubbleRating {
    return $BubbleRatingCopyWith<$Res>(_value.bubbleRating, (value) {
      return _then(_value.copyWith(bubbleRating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelImplCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$HotelImplCopyWith(
          _$HotelImpl value, $Res Function(_$HotelImpl) then) =
      __$$HotelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      BubbleRating bubbleRating,
      List<CardPhotos> cardPhotos});

  @override
  $BubbleRatingCopyWith<$Res> get bubbleRating;
}

/// @nodoc
class __$$HotelImplCopyWithImpl<$Res>
    extends _$HotelCopyWithImpl<$Res, _$HotelImpl>
    implements _$$HotelImplCopyWith<$Res> {
  __$$HotelImplCopyWithImpl(
      _$HotelImpl _value, $Res Function(_$HotelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? bubbleRating = null,
    Object? cardPhotos = null,
  }) {
    return _then(_$HotelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      bubbleRating: null == bubbleRating
          ? _value.bubbleRating
          : bubbleRating // ignore: cast_nullable_to_non_nullable
              as BubbleRating,
      cardPhotos: null == cardPhotos
          ? _value._cardPhotos
          : cardPhotos // ignore: cast_nullable_to_non_nullable
              as List<CardPhotos>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelImpl implements _Hotel {
  const _$HotelImpl(
      {required this.id,
      required this.title,
      required this.bubbleRating,
      required final List<CardPhotos> cardPhotos})
      : _cardPhotos = cardPhotos;

  factory _$HotelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final BubbleRating bubbleRating;
  final List<CardPhotos> _cardPhotos;
  @override
  List<CardPhotos> get cardPhotos {
    if (_cardPhotos is EqualUnmodifiableListView) return _cardPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cardPhotos);
  }

  @override
  String toString() {
    return 'Hotel(id: $id, title: $title, bubbleRating: $bubbleRating, cardPhotos: $cardPhotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.bubbleRating, bubbleRating) ||
                other.bubbleRating == bubbleRating) &&
            const DeepCollectionEquality()
                .equals(other._cardPhotos, _cardPhotos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, bubbleRating,
      const DeepCollectionEquality().hash(_cardPhotos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelImplCopyWith<_$HotelImpl> get copyWith =>
      __$$HotelImplCopyWithImpl<_$HotelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelImplToJson(
      this,
    );
  }
}

abstract class _Hotel implements Hotel {
  const factory _Hotel(
      {required final String id,
      required final String title,
      required final BubbleRating bubbleRating,
      required final List<CardPhotos> cardPhotos}) = _$HotelImpl;

  factory _Hotel.fromJson(Map<String, dynamic> json) = _$HotelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  BubbleRating get bubbleRating;
  @override
  List<CardPhotos> get cardPhotos;
  @override
  @JsonKey(ignore: true)
  _$$HotelImplCopyWith<_$HotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BubbleRating _$BubbleRatingFromJson(Map<String, dynamic> json) {
  return _BubbleRating.fromJson(json);
}

/// @nodoc
mixin _$BubbleRating {
  String get count => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BubbleRatingCopyWith<BubbleRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BubbleRatingCopyWith<$Res> {
  factory $BubbleRatingCopyWith(
          BubbleRating value, $Res Function(BubbleRating) then) =
      _$BubbleRatingCopyWithImpl<$Res, BubbleRating>;
  @useResult
  $Res call({String count, double rating});
}

/// @nodoc
class _$BubbleRatingCopyWithImpl<$Res, $Val extends BubbleRating>
    implements $BubbleRatingCopyWith<$Res> {
  _$BubbleRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BubbleRatingImplCopyWith<$Res>
    implements $BubbleRatingCopyWith<$Res> {
  factory _$$BubbleRatingImplCopyWith(
          _$BubbleRatingImpl value, $Res Function(_$BubbleRatingImpl) then) =
      __$$BubbleRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String count, double rating});
}

/// @nodoc
class __$$BubbleRatingImplCopyWithImpl<$Res>
    extends _$BubbleRatingCopyWithImpl<$Res, _$BubbleRatingImpl>
    implements _$$BubbleRatingImplCopyWith<$Res> {
  __$$BubbleRatingImplCopyWithImpl(
      _$BubbleRatingImpl _value, $Res Function(_$BubbleRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? rating = null,
  }) {
    return _then(_$BubbleRatingImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BubbleRatingImpl implements _BubbleRating {
  const _$BubbleRatingImpl({required this.count, required this.rating});

  factory _$BubbleRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BubbleRatingImplFromJson(json);

  @override
  final String count;
  @override
  final double rating;

  @override
  String toString() {
    return 'BubbleRating(count: $count, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BubbleRatingImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BubbleRatingImplCopyWith<_$BubbleRatingImpl> get copyWith =>
      __$$BubbleRatingImplCopyWithImpl<_$BubbleRatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BubbleRatingImplToJson(
      this,
    );
  }
}

abstract class _BubbleRating implements BubbleRating {
  const factory _BubbleRating(
      {required final String count,
      required final double rating}) = _$BubbleRatingImpl;

  factory _BubbleRating.fromJson(Map<String, dynamic> json) =
      _$BubbleRatingImpl.fromJson;

  @override
  String get count;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$BubbleRatingImplCopyWith<_$BubbleRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardPhotos _$CardPhotosFromJson(Map<String, dynamic> json) {
  return _CardPhotos.fromJson(json);
}

/// @nodoc
mixin _$CardPhotos {
  Sizes get sizes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardPhotosCopyWith<CardPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardPhotosCopyWith<$Res> {
  factory $CardPhotosCopyWith(
          CardPhotos value, $Res Function(CardPhotos) then) =
      _$CardPhotosCopyWithImpl<$Res, CardPhotos>;
  @useResult
  $Res call({Sizes sizes});

  $SizesCopyWith<$Res> get sizes;
}

/// @nodoc
class _$CardPhotosCopyWithImpl<$Res, $Val extends CardPhotos>
    implements $CardPhotosCopyWith<$Res> {
  _$CardPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sizes = null,
  }) {
    return _then(_value.copyWith(
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as Sizes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SizesCopyWith<$Res> get sizes {
    return $SizesCopyWith<$Res>(_value.sizes, (value) {
      return _then(_value.copyWith(sizes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardPhotosImplCopyWith<$Res>
    implements $CardPhotosCopyWith<$Res> {
  factory _$$CardPhotosImplCopyWith(
          _$CardPhotosImpl value, $Res Function(_$CardPhotosImpl) then) =
      __$$CardPhotosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Sizes sizes});

  @override
  $SizesCopyWith<$Res> get sizes;
}

/// @nodoc
class __$$CardPhotosImplCopyWithImpl<$Res>
    extends _$CardPhotosCopyWithImpl<$Res, _$CardPhotosImpl>
    implements _$$CardPhotosImplCopyWith<$Res> {
  __$$CardPhotosImplCopyWithImpl(
      _$CardPhotosImpl _value, $Res Function(_$CardPhotosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sizes = null,
  }) {
    return _then(_$CardPhotosImpl(
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as Sizes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardPhotosImpl implements _CardPhotos {
  const _$CardPhotosImpl({required this.sizes});

  factory _$CardPhotosImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardPhotosImplFromJson(json);

  @override
  final Sizes sizes;

  @override
  String toString() {
    return 'CardPhotos(sizes: $sizes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardPhotosImpl &&
            (identical(other.sizes, sizes) || other.sizes == sizes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sizes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardPhotosImplCopyWith<_$CardPhotosImpl> get copyWith =>
      __$$CardPhotosImplCopyWithImpl<_$CardPhotosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardPhotosImplToJson(
      this,
    );
  }
}

abstract class _CardPhotos implements CardPhotos {
  const factory _CardPhotos({required final Sizes sizes}) = _$CardPhotosImpl;

  factory _CardPhotos.fromJson(Map<String, dynamic> json) =
      _$CardPhotosImpl.fromJson;

  @override
  Sizes get sizes;
  @override
  @JsonKey(ignore: true)
  _$$CardPhotosImplCopyWith<_$CardPhotosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sizes _$SizesFromJson(Map<String, dynamic> json) {
  return _Sizes.fromJson(json);
}

/// @nodoc
mixin _$Sizes {
  double get maxHeight => throw _privateConstructorUsedError;
  double get maxWidth => throw _privateConstructorUsedError;
  String get urlTemplate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizesCopyWith<Sizes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizesCopyWith<$Res> {
  factory $SizesCopyWith(Sizes value, $Res Function(Sizes) then) =
      _$SizesCopyWithImpl<$Res, Sizes>;
  @useResult
  $Res call({double maxHeight, double maxWidth, String urlTemplate});
}

/// @nodoc
class _$SizesCopyWithImpl<$Res, $Val extends Sizes>
    implements $SizesCopyWith<$Res> {
  _$SizesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxHeight = null,
    Object? maxWidth = null,
    Object? urlTemplate = null,
  }) {
    return _then(_value.copyWith(
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      urlTemplate: null == urlTemplate
          ? _value.urlTemplate
          : urlTemplate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizesImplCopyWith<$Res> implements $SizesCopyWith<$Res> {
  factory _$$SizesImplCopyWith(
          _$SizesImpl value, $Res Function(_$SizesImpl) then) =
      __$$SizesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double maxHeight, double maxWidth, String urlTemplate});
}

/// @nodoc
class __$$SizesImplCopyWithImpl<$Res>
    extends _$SizesCopyWithImpl<$Res, _$SizesImpl>
    implements _$$SizesImplCopyWith<$Res> {
  __$$SizesImplCopyWithImpl(
      _$SizesImpl _value, $Res Function(_$SizesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxHeight = null,
    Object? maxWidth = null,
    Object? urlTemplate = null,
  }) {
    return _then(_$SizesImpl(
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
      urlTemplate: null == urlTemplate
          ? _value.urlTemplate
          : urlTemplate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizesImpl implements _Sizes {
  const _$SizesImpl(
      {required this.maxHeight,
      required this.maxWidth,
      required this.urlTemplate});

  factory _$SizesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizesImplFromJson(json);

  @override
  final double maxHeight;
  @override
  final double maxWidth;
  @override
  final String urlTemplate;

  @override
  String toString() {
    return 'Sizes(maxHeight: $maxHeight, maxWidth: $maxWidth, urlTemplate: $urlTemplate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizesImpl &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.urlTemplate, urlTemplate) ||
                other.urlTemplate == urlTemplate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxHeight, maxWidth, urlTemplate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SizesImplCopyWith<_$SizesImpl> get copyWith =>
      __$$SizesImplCopyWithImpl<_$SizesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizesImplToJson(
      this,
    );
  }
}

abstract class _Sizes implements Sizes {
  const factory _Sizes(
      {required final double maxHeight,
      required final double maxWidth,
      required final String urlTemplate}) = _$SizesImpl;

  factory _Sizes.fromJson(Map<String, dynamic> json) = _$SizesImpl.fromJson;

  @override
  double get maxHeight;
  @override
  double get maxWidth;
  @override
  String get urlTemplate;
  @override
  @JsonKey(ignore: true)
  _$$SizesImplCopyWith<_$SizesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
