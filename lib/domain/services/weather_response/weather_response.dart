import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:travel_helper_next/data/json/openweather.dart';
import 'package:travel_helper_next/data/models/weather/weather.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    required String cod,
    required List<WeatherData> list,
    required City city,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}
void main(){
  //print(WeatherResponse.fromJson(mul));
}