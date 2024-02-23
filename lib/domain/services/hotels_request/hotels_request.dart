import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_helper_next/data/json/tripadvisor.dart';
import 'package:travel_helper_next/data/models/hotel/hotel_class.dart';

part 'hotels_request.freezed.dart';
part 'hotels_request.g.dart';

@freezed
class HotelsRequest with _$HotelsRequest {
  const factory HotelsRequest({
    required bool status,
    required HotelData data,
  }) = _HotelsRequest;

  factory HotelsRequest.fromJson(Map<String, dynamic> json) => _$HotelsRequestFromJson(json);
}
void main() {
  print(HotelsRequest.fromJson(mul));
}
