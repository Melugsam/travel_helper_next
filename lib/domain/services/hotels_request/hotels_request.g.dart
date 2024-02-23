// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelsRequestImpl _$$HotelsRequestImplFromJson(Map<String, dynamic> json) =>
    _$HotelsRequestImpl(
      status: json['status'] as bool,
      data: HotelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelsRequestImplToJson(_$HotelsRequestImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
