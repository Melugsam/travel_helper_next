import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel_helper_next/data/api_key/api_key.dart';
import 'package:travel_helper_next/domain/services/hotels_response/hotels_response.dart';

part 'hotels_info_event.dart';

part 'hotels_info_state.dart';

class HotelsInfoBloc extends Bloc<HotelsInfoEvent, HotelsInfoState> {
  String firstDate = '';
  String secondDate = '';
  HotelsInfoBloc() : super(HotelsInfoInitial()) {
    on<SaveDateVariable>((event, emit) {
      if(event.position==1){
        firstDate = event.date;
      }
      if (event.position==2){
        secondDate=event.date;
      }
    });
    on<MakeRequestHotels>((event, emit) async {
      emit(HotelsInfoLoadingState());
      try{
        var response =await fetchHotelsData(event.mapPoint, event.checkInDate, event.checkOutDate);
        emit(HotelsInfoReceivedState(response:response));
      }catch(ex){
        debugPrint(ex.toString());
        emit(HotelsInfoErrorState());
      }
    });
  }

  Future<HotelsResponse> fetchHotelsData(LatLng mapPoint, String checkInDate, String checkOutDate) async {
    try {
      final response = await http.get(
          Uri.parse(
              'https://tripadvisor16.p.rapidapi.com/api/v1/hotels/searchHotelsByLocation?latitude=${mapPoint.latitude}&longitude=${mapPoint.longitude}&checkIn=$checkInDate&checkOut=$checkOutDate&pageNumber=1&currencyCode=USD'),
          headers: {
            'X-RapidAPI-Key':
                key,
            'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
          });
      if (response.statusCode == 200) {
        return HotelsResponse.fromJson(json.decode(response.body));
      }
      else {
        throw Exception('Плохой статус');
      }
    } catch (ex) {
      debugPrint(ex.toString());
      throw Exception("Не удалось получить информацию");
    }
  }
}
