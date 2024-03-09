import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_helper_next/data/json/tripadvisor.dart';
import 'package:travel_helper_next/data/models/hotel/hotel_class.dart';

part 'hotels_response.freezed.dart';
part 'hotels_response.g.dart';

@freezed
class HotelsResponse with _$HotelsResponse {
  const factory HotelsResponse({
    required bool status,
    required HotelData data,
  }) = _HotelsResponse;

  factory HotelsResponse.fromJson(Map<String, dynamic> json) => _$HotelsResponseFromJson(json);
}
void main() {
  print(HotelsResponse.fromJson(mul));
}
