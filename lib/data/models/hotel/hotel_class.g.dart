// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelDataImpl _$$HotelDataImplFromJson(Map<String, dynamic> json) =>
    _$HotelDataImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Hotel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HotelDataImplToJson(_$HotelDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$HotelImpl _$$HotelImplFromJson(Map<String, dynamic> json) => _$HotelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      bubbleRating:
          BubbleRating.fromJson(json['bubbleRating'] as Map<String, dynamic>),
      cardPhotos: (json['cardPhotos'] as List<dynamic>)
          .map((e) => CardPhotos.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HotelImplToJson(_$HotelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'bubbleRating': instance.bubbleRating,
      'cardPhotos': instance.cardPhotos,
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

_$CardPhotosImpl _$$CardPhotosImplFromJson(Map<String, dynamic> json) =>
    _$CardPhotosImpl(
      sizes: Sizes.fromJson(json['sizes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CardPhotosImplToJson(_$CardPhotosImpl instance) =>
    <String, dynamic>{
      'sizes': instance.sizes,
    };

_$SizesImpl _$$SizesImplFromJson(Map<String, dynamic> json) => _$SizesImpl(
      maxHeight: (json['maxHeight'] as num).toDouble(),
      maxWidth: (json['maxWidth'] as num).toDouble(),
      urlTemplate: json['urlTemplate'] as String,
    );

Map<String, dynamic> _$$SizesImplToJson(_$SizesImpl instance) =>
    <String, dynamic>{
      'maxHeight': instance.maxHeight,
      'maxWidth': instance.maxWidth,
      'urlTemplate': instance.urlTemplate,
    };
