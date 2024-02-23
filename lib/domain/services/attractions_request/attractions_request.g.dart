// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attractions_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttractionsRequestImpl _$$AttractionsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AttractionsRequestImpl(
      features: (json['features'] as List<dynamic>)
          .map((e) => AttractionsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AttractionsRequestImplToJson(
        _$AttractionsRequestImpl instance) =>
    <String, dynamic>{
      'features': instance.features,
    };
