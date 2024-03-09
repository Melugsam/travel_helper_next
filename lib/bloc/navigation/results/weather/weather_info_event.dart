part of 'weather_info_bloc.dart';


abstract class WeatherInfoEvent {}
class MakeRequestWeather extends WeatherInfoEvent{
  final LatLng mapPoint;
  MakeRequestWeather({required this.mapPoint});
}
