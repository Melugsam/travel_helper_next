import 'dart:async';
import 'dart:convert';
import 'package:latlong2/latlong.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:travel_helper_next/domain/services/monuments_response/monuments_response.dart';
part 'monuments_info_event.dart';
part 'monuments_info_state.dart';

class MonumentsInfoBloc extends Bloc<MonumentsInfoEvent, MonumentsInfoState> {
  MonumentsInfoBloc() : super(MonumentsInfoInitial()) {
    on<MakeRequestMonuments>((event, emit) async{
      emit(MonumentsInfoInitial());
      try{
        var response = await fetchMonumentData(event.mapPoint);
        emit(MonumentInfoReceived(monumentsResponse: response));
      }catch(ex){
        print(ex);
        emit(MonumentInfoError());
      }
    });
  }

  Future<MonumentsResponse> fetchMonumentData(LatLng mapPoint) async {
    try {
      final Map<String, String> queryParams = {
        'query': 'monument',
        'limit': '50',
        'lat': mapPoint.latitude.toString(),
        'lng': mapPoint.longitude.toString(),
      };
      final response = await http.get(
          Uri.parse(
              'https://maps-data.p.rapidapi.com/nearby.php').replace(queryParameters: queryParams),
          headers: {
            'X-RapidAPI-Key':
            'b90067a9b8msh9395067bc105ddfp16fba8jsnaa403b98ff76',
            'X-RapidAPI-Host': 'maps-data.p.rapidapi.com',
          });
      if (response.statusCode == 200) {
        print(response.body);
        return MonumentsResponse.fromJson(json.decode(response.body));
      }
      else{
        throw Exception("Плохой статус");
      }
    } catch(ex) {
      print(ex);
      throw Exception("Не удалось получить информацию");
    }
  }
}
