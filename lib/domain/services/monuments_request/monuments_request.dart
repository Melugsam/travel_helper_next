import 'package:travel_helper_next/data/json/maps_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_helper_next/data/models/monument/monument.dart';

part 'monuments_request.freezed.dart';
part 'monuments_request.g.dart';

@freezed
class MonumentsRequest with _$MonumentsRequest {
  const factory MonumentsRequest({
    required List<MonumentData> data,
}) = _MonumentsRequest;

  factory MonumentsRequest.fromJson(Map<String, dynamic> json) =>
      _$MonumentsRequestFromJson(json);
}

void main(){
  print(MonumentsRequest.fromJson(mul));
}