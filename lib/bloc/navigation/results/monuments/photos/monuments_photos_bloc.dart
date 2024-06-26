import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:travel_helper_next/data/api_key/api_key.dart';
import 'package:travel_helper_next/domain/services/monuments_response/photos/monument_photo_response.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_network_image.dart';
part 'monuments_photos_event.dart';
part 'monuments_photos_state.dart';

class MonumentsPhotosBloc extends Bloc<MonumentsPhotosEvent, MonumentsPhotosState> {
  MonumentsPhotosBloc() : super(MonumentsPhotosInitial()) {
    on<MakeRequestMonumentsPhotos>((event, emit) async{
      emit(MonumentPhotosLoading());
      try{
        var response = await fetchWeatherData(event.businessId);
        emit(MonumentPhotosReceived(photoWidget: buildPhotoWidget(response)));
      }catch(ex){
        debugPrint(ex.toString());
        emit(MonumentPhotosError());
      }
    });
  }
  Future<MonumentPhotoResponse> fetchWeatherData(String businessId) async {
    try {
      final Map<String, String> queryParams = {
        'business_id':businessId
      };
      final response = await http.get(
          Uri.parse(
              'https://maps-data.p.rapidapi.com/photos.php').replace(queryParameters: queryParams),
          headers: {
            'X-RapidAPI-Key':
            key,
            'X-RapidAPI-Host': 'maps-data.p.rapidapi.com',
          });
      if (response.statusCode == 200) {
        return MonumentPhotoResponse.fromJson(json.decode(response.body));
      }
      else{
        throw Exception("Плохой статус");
      }
    } catch(ex) {
      debugPrint(ex.toString());
      throw Exception("Не удалось получить информацию");
    }
  }
  Widget buildPhotoWidget(MonumentPhotoResponse monumentsResponse){
    return CustomNetworkImage(url: monumentsResponse.data.photos[0], boxFit: BoxFit.cover,);
  }
}
