import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_helper_next/data/json/tripadvisor.dart';


part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class Response with _$Response {
  const factory Response({
    required bool status,
    required Data data,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<Hotel> data,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required String id,
    required String title,
    required BubbleRating bubbleRating,
    required List<CardPhotos> cardPhotos,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}

@freezed
class BubbleRating with _$BubbleRating{
  const factory BubbleRating({
    required String count,
    required double rating,
  }) = _BubbleRating;

  factory BubbleRating.fromJson(Map<String, dynamic> json) => _$BubbleRatingFromJson(json);
}

@freezed
class CardPhotos with _$CardPhotos{
  const factory CardPhotos({
    
  });
}


void main() {
  print(Response.fromJson(mul));
}
