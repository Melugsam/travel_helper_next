// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monuments_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonumentsRequest _$MonumentsRequestFromJson(Map<String, dynamic> json) {
  return _MonumentsRequest.fromJson(json);
}

/// @nodoc
mixin _$MonumentsRequest {
  List<MonumentData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonumentsRequestCopyWith<MonumentsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonumentsRequestCopyWith<$Res> {
  factory $MonumentsRequestCopyWith(
          MonumentsRequest value, $Res Function(MonumentsRequest) then) =
      _$MonumentsRequestCopyWithImpl<$Res, MonumentsRequest>;
  @useResult
  $Res call({List<MonumentData> data});
}

/// @nodoc
class _$MonumentsRequestCopyWithImpl<$Res, $Val extends MonumentsRequest>
    implements $MonumentsRequestCopyWith<$Res> {
  _$MonumentsRequestCopyWithImpl(this._value, this._then);

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
              as List<MonumentData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonumentsRequestImplCopyWith<$Res>
    implements $MonumentsRequestCopyWith<$Res> {
  factory _$$MonumentsRequestImplCopyWith(_$MonumentsRequestImpl value,
          $Res Function(_$MonumentsRequestImpl) then) =
      __$$MonumentsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MonumentData> data});
}

/// @nodoc
class __$$MonumentsRequestImplCopyWithImpl<$Res>
    extends _$MonumentsRequestCopyWithImpl<$Res, _$MonumentsRequestImpl>
    implements _$$MonumentsRequestImplCopyWith<$Res> {
  __$$MonumentsRequestImplCopyWithImpl(_$MonumentsRequestImpl _value,
      $Res Function(_$MonumentsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MonumentsRequestImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MonumentData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonumentsRequestImpl implements _MonumentsRequest {
  const _$MonumentsRequestImpl({required final List<MonumentData> data})
      : _data = data;

  factory _$MonumentsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonumentsRequestImplFromJson(json);

  final List<MonumentData> _data;
  @override
  List<MonumentData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MonumentsRequest(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonumentsRequestImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonumentsRequestImplCopyWith<_$MonumentsRequestImpl> get copyWith =>
      __$$MonumentsRequestImplCopyWithImpl<_$MonumentsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonumentsRequestImplToJson(
      this,
    );
  }
}

abstract class _MonumentsRequest implements MonumentsRequest {
  const factory _MonumentsRequest({required final List<MonumentData> data}) =
      _$MonumentsRequestImpl;

  factory _MonumentsRequest.fromJson(Map<String, dynamic> json) =
      _$MonumentsRequestImpl.fromJson;

  @override
  List<MonumentData> get data;
  @override
  @JsonKey(ignore: true)
  _$$MonumentsRequestImplCopyWith<_$MonumentsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
