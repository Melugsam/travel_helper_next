import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:travel_helper_next/domain/services/monuments_response/photos/monument_photo_response.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_network_image.dart';
part 'monuments_photos_event.dart';
part 'monuments_photos_state.dart';

class MonumentsPhotosBloc extends Bloc<MonumentsPhotosEvent, MonumentsPhotosState> {
  MonumentsPhotosBloc() : super(MonumentsPhotosInitial()) {
    on<MakeRequestMonumentsPhotos>((event, emit) async{
      emit(MonumentPhotosLoading());
      try{
        var response = await fetchWeatherData(event.business_id);
        emit(MonumentPhotosReceived(photoWidget: buildPhotoWidget(response)));
      }catch(ex){
        print(ex);
        emit(MonumentPhotosError());
      }
    });
  }
  Future<MonumentPhotoResponse> fetchWeatherData(String business_id) async {
    try {
      final Map<String, String> queryParams = {
        'business_id':business_id
      };
      final response = await http.get(
          Uri.parse(
              'https://maps-data.p.rapidapi.com/photos.php').replace(queryParameters: queryParams),
          headers: {
            'X-RapidAPI-Key':
            'b90067a9b8msh9395067bc105ddfp16fba8jsnaa403b98ff76',
            'X-RapidAPI-Host': 'maps-data.p.rapidapi.com',
          });
      if (response.statusCode == 200) {
        return MonumentPhotoResponse.fromJson(json.decode(response.body));
      }
      else{
        throw Exception("Плохой статус");
      }
    } catch(ex) {
      print(ex);
      throw Exception("Не удалось получить информацию");
    }
  }
  Widget buildPhotoWidget(MonumentPhotoResponse monumentsResponse){
    return CustomNetworkImage(url: monumentsResponse.data.photos[0], boxFit: BoxFit.cover,);
  }
}
