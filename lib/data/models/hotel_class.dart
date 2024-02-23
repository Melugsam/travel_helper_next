import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_class.freezed.dart';
part 'hotel_class.g.dart';
@freezed
class HotelData with _$HotelData {
  const factory HotelData({
    required List<Hotel> data,
  }) = _HotelData;

  factory HotelData.fromJson(Map<String, dynamic> json) => _$HotelDataFromJson(json);
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
    required Sizes sizes,
  }) = _CardPhotos;

  factory CardPhotos.fromJson(Map<String, dynamic> json) =>
      _$CardPhotosFromJson(json);
}

@freezed
class Sizes with _$Sizes{
  const factory Sizes({
    required double maxHeight,
    required double maxWidth,
    required String urlTemplate,
  }) = _Sizes;

  factory Sizes.fromJson(Map<String, dynamic> json) => _$SizesFromJson(json);
}