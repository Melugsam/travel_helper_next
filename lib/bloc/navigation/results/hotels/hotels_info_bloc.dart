import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel_helper_next/domain/services/hotels_response/hotels_response.dart';

part 'hotels_info_event.dart';

part 'hotels_info_state.dart';

class HotelsInfoBloc extends Bloc<HotelsInfoEvent, HotelsInfoState> {
  HotelsInfoBloc() : super(HotelsInfoInitial()) {
    on<MakeRequestHotels>((event, emit) async {
      emit(HotelsInfoLoadingState());
      try{
        var response =await fetchHotelsData(event.mapPoint);
        emit(HotelsInfoReceivedState(response:response));
      }catch(ex){
        print(ex);
        emit(HotelsInfoErrorState());
      }
    });
  }

  Future<HotelsResponse> fetchHotelsData(LatLng mapPoint) async {
    String checkIn = "2024-03-15";
    String checkOut = "2024-03-30";
    try {
      final response = await http.get(
          Uri.parse(
              'https://tripadvisor16.p.rapidapi.com/api/v1/hotels/searchHotelsByLocation?latitude=${mapPoint.latitude}&longitude=${mapPoint.longitude}&checkIn=$checkIn&checkOut=$checkOut&pageNumber=1&currencyCode=USD'),
          headers: {
            'X-RapidAPI-Key':
                'b90067a9b8msh9395067bc105ddfp16fba8jsnaa403b98ff76',
            'X-RapidAPI-Host': 'tripadvisor16.p.rapidapi.com',
          });
      if (response.statusCode == 200) {
        return HotelsResponse.fromJson(json.decode(response.body));
      }
      else {
        throw Exception('Плохой статус');
      }
    } catch (ex) {
      print(ex);
      throw Exception("Не удалось получить информацию");
    }
  }
}
