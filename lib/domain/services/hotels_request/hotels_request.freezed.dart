// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelsRequest _$HotelsRequestFromJson(Map<String, dynamic> json) {
  return _HotelsRequest.fromJson(json);
}

/// @nodoc
mixin _$HotelsRequest {
  bool get status => throw _privateConstructorUsedError;
  HotelData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsRequestCopyWith<HotelsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsRequestCopyWith<$Res> {
  factory $HotelsRequestCopyWith(
          HotelsRequest value, $Res Function(HotelsRequest) then) =
      _$HotelsRequestCopyWithImpl<$Res, HotelsRequest>;
  @useResult
  $Res call({bool status, HotelData data});

  $HotelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HotelsRequestCopyWithImpl<$Res, $Val extends HotelsRequest>
    implements $HotelsRequestCopyWith<$Res> {
  _$HotelsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HotelData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelDataCopyWith<$Res> get data {
    return $HotelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelsRequestImplCopyWith<$Res>
    implements $HotelsRequestCopyWith<$Res> {
  factory _$$HotelsRequestImplCopyWith(
          _$HotelsRequestImpl value, $Res Function(_$HotelsRequestImpl) then) =
      __$$HotelsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, HotelData data});

  @override
  $HotelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$HotelsRequestImplCopyWithImpl<$Res>
    extends _$HotelsRequestCopyWithImpl<$Res, _$HotelsRequestImpl>
    implements _$$HotelsRequestImplCopyWith<$Res> {
  __$$HotelsRequestImplCopyWithImpl(
      _$HotelsRequestImpl _value, $Res Function(_$HotelsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$HotelsRequestImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HotelData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelsRequestImpl implements _HotelsRequest {
  const _$HotelsRequestImpl({required this.status, required this.data});

  factory _$HotelsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelsRequestImplFromJson(json);

  @override
  final bool status;
  @override
  final HotelData data;

  @override
  String toString() {
    return 'HotelsRequest(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelsRequestImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelsRequestImplCopyWith<_$HotelsRequestImpl> get copyWith =>
      __$$HotelsRequestImplCopyWithImpl<_$HotelsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelsRequestImplToJson(
      this,
    );
  }
}

abstract class _HotelsRequest implements HotelsRequest {
  const factory _HotelsRequest(
      {required final bool status,
      required final HotelData data}) = _$HotelsRequestImpl;

  factory _HotelsRequest.fromJson(Map<String, dynamic> json) =
      _$HotelsRequestImpl.fromJson;

  @override
  bool get status;
  @override
  HotelData get data;
  @override
  @JsonKey(ignore: true)
  _$$HotelsRequestImplCopyWith<_$HotelsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
