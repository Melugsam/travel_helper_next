// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monuments_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonumentsRequestImpl _$$MonumentsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$MonumentsRequestImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => MonumentData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MonumentsRequestImplToJson(
        _$MonumentsRequestImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
