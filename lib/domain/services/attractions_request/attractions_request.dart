import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_helper_next/data/json/places.dart';
import 'package:travel_helper_next/data/models/attraction/attraction.dart';

part 'attractions_request.freezed.dart';
part 'attractions_request.g.dart';

@freezed
class AttractionsRequest with _$AttractionsRequest {
  const factory AttractionsRequest({
    required List<AttractionsData> features,
  }) = _AttractionsRequest;

  factory AttractionsRequest.fromJson(Map<String, dynamic> json) =>
      _$AttractionsRequestFromJson(json);
}


void main() {
  print(AttractionsRequest.fromJson(mul));
}