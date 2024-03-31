//import 'package:travel_helper_next/data/json/maps_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_helper_next/data/models/monument/monument.dart';

part 'monuments_response.freezed.dart';
part 'monuments_response.g.dart';

@freezed
class MonumentsResponse with _$MonumentsResponse {
  const factory MonumentsResponse({
    required List<MonumentData> data,
}) = _MonumentsResponse;

  factory MonumentsResponse.fromJson(Map<String, dynamic> json) =>
      _$MonumentsResponseFromJson(json);
}

void main(){
  //print(MonumentsResponse.fromJson(mul));
}