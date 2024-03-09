part of 'weather_info_bloc.dart';


abstract class WeatherInfoState {}

class WeatherInfoInitial extends WeatherInfoState {}
class WeatherInfoLoadingState extends WeatherInfoState{}
class WeatherInfoReceivedState extends WeatherInfoState{
  final WeatherResponse weatherResponse;
  WeatherInfoReceivedState({required this.weatherResponse});
}
class WeatherInfoErrorState extends WeatherInfoState{}
