// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonumentDataImpl _$$MonumentDataImplFromJson(Map<String, dynamic> json) =>
    _$MonumentDataImpl(
      business_id: json['business_id'] as String,
      name: json['name'] as String,
      full_address: json['full_address'] as String? ?? "",
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
      review_count: json['review_count'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      place_id: json['place_id'] as String? ?? "",
      place_link: json['place_link'] as String? ?? "",
      description: (json['description'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MonumentDataImplToJson(_$MonumentDataImpl instance) =>
    <String, dynamic>{
      'business_id': instance.business_id,
      'name': instance.name,
      'full_address': instance.full_address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'review_count': instance.review_count,
      'rating': instance.rating,
      'place_id': instance.place_id,
      'place_link': instance.place_link,
      'description': instance.description,
    };
