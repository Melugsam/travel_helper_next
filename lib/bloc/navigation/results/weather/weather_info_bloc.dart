import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:travel_helper_next/data/api_key/api_key.dart';
import 'package:travel_helper_next/domain/services/weather_response/weather_response.dart';

part 'weather_info_event.dart';
part 'weather_info_state.dart';

class WeatherInfoBloc extends Bloc<WeatherInfoEvent, WeatherInfoState> {
  WeatherInfoBloc() : super(WeatherInfoInitial()) {
    on<MakeRequestWeather>((event, emit) async {
      emit(WeatherInfoLoadingState());
      try{
        var response = await fetchWeatherData(event.mapPoint);
        emit(WeatherInfoReceivedState(weatherResponse: response));
      }catch (ex){
       emit(WeatherInfoErrorState());
      }
    });
  }
  Future<WeatherResponse> fetchWeatherData(LatLng mapPoint) async {
    try {
      final response = await http.get(
          Uri.parse(
              'https://open-weather13.p.rapidapi.com/city/fivedaysforcast/${mapPoint.latitude}/${mapPoint.longitude}'),
          headers: {
            'X-RapidAPI-Key':
            key,
            'X-RapidAPI-Host': 'open-weather13.p.rapidapi.com',
          });
      if (response.statusCode == 200) {
        return WeatherResponse.fromJson(json.decode(response.body));
      }
      else{
        throw Exception("Плохой статус");
      }
    } catch(ex) {
      debugPrint(ex.toString());
      throw Exception("Не удалось получить информацию");
    }
  }
}
