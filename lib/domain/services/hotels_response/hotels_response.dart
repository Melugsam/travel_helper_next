import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_helper_next/data/json/tripadvisor.dart';
import 'package:travel_helper_next/data/models/hotel_class.dart';

part 'hotels_response.freezed.dart';
part 'hotels_response.g.dart';

@freezed
class Response with _$Response {
  const factory Response({
    required bool status,
    required HotelData data,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}
void main() {
  print(Response.fromJson(mul));
}
