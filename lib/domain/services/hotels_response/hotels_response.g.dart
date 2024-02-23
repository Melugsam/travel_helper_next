// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseImpl _$$ResponseImplFromJson(Map<String, dynamic> json) =>
    _$ResponseImpl(
      status: json['status'] as bool,
      data: HotelData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseImplToJson(_$ResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
