import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_helper_next/data/json/openweather.dart';
import 'package:travel_helper_next/data/models/weather/weather.dart';

part 'weather_request.freezed.dart';
part 'weather_request.g.dart';

@freezed
class WeatherRequest with _$WeatherRequest {
  const factory WeatherRequest({
    required String cod,
    required List<WeatherData> list,
  }) = _WeatherRequest;

  factory WeatherRequest.fromJson(Map<String, dynamic> json) =>
      _$WeatherRequestFromJson(json);
}
void main(){
  print(WeatherRequest.fromJson(mul));
}