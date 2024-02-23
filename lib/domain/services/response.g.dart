// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseImpl _$$ResponseImplFromJson(Map<String, dynamic> json) =>
    _$ResponseImpl(
      status: json['status'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseImplToJson(_$ResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Hotel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$HotelImpl _$$HotelImplFromJson(Map<String, dynamic> json) => _$HotelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      bubbleRating:
          BubbleRating.fromJson(json['bubbleRating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelImplToJson(_$HotelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'bubbleRating': instance.bubbleRating,
    };

_$BubbleRatingImpl _$$BubbleRatingImplFromJson(Map<String, dynamic> json) =>
    _$BubbleRatingImpl(
      count: json['count'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$BubbleRatingImplToJson(_$BubbleRatingImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rating': instance.rating,
    };
