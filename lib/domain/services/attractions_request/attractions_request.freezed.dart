// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attractions_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttractionsRequest _$AttractionsRequestFromJson(Map<String, dynamic> json) {
  return _AttractionsRequest.fromJson(json);
}

/// @nodoc
mixin _$AttractionsRequest {
  List<AttractionsData> get features => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttractionsRequestCopyWith<AttractionsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttractionsRequestCopyWith<$Res> {
  factory $AttractionsRequestCopyWith(
          AttractionsRequest value, $Res Function(AttractionsRequest) then) =
      _$AttractionsRequestCopyWithImpl<$Res, AttractionsRequest>;
  @useResult
  $Res call({List<AttractionsData> features});
}

/// @nodoc
class _$AttractionsRequestCopyWithImpl<$Res, $Val extends AttractionsRequest>
    implements $AttractionsRequestCopyWith<$Res> {
  _$AttractionsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_value.copyWith(
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<AttractionsData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttractionsRequestImplCopyWith<$Res>
    implements $AttractionsRequestCopyWith<$Res> {
  factory _$$AttractionsRequestImplCopyWith(_$AttractionsRequestImpl value,
          $Res Function(_$AttractionsRequestImpl) then) =
      __$$AttractionsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AttractionsData> features});
}

/// @nodoc
class __$$AttractionsRequestImplCopyWithImpl<$Res>
    extends _$AttractionsRequestCopyWithImpl<$Res, _$AttractionsRequestImpl>
    implements _$$AttractionsRequestImplCopyWith<$Res> {
  __$$AttractionsRequestImplCopyWithImpl(_$AttractionsRequestImpl _value,
      $Res Function(_$AttractionsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_$AttractionsRequestImpl(
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<AttractionsData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttractionsRequestImpl implements _AttractionsRequest {
  const _$AttractionsRequestImpl(
      {required final List<AttractionsData> features})
      : _features = features;

  factory _$AttractionsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttractionsRequestImplFromJson(json);

  final List<AttractionsData> _features;
  @override
  List<AttractionsData> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  String toString() {
    return 'AttractionsRequest(features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttractionsRequestImpl &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_features));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttractionsRequestImplCopyWith<_$AttractionsRequestImpl> get copyWith =>
      __$$AttractionsRequestImplCopyWithImpl<_$AttractionsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttractionsRequestImplToJson(
      this,
    );
  }
}

abstract class _AttractionsRequest implements AttractionsRequest {
  const factory _AttractionsRequest(
          {required final List<AttractionsData> features}) =
      _$AttractionsRequestImpl;

  factory _AttractionsRequest.fromJson(Map<String, dynamic> json) =
      _$AttractionsRequestImpl.fromJson;

  @override
  List<AttractionsData> get features;
  @override
  @JsonKey(ignore: true)
  _$$AttractionsRequestImplCopyWith<_$AttractionsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
