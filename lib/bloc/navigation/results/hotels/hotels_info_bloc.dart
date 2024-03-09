import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel_helper_next/bloc/navigation/search/find_info_bloc.dart';
import 'package:travel_helper_next/domain/services/hotels_request/hotels_request.dart';

part 'hotels_info_event.dart';

part 'hotels_info_state.dart';

class HotelsInfoBloc extends Bloc<HotelsInfoEvent, HotelsInfoState> {
  final FindInfoBloc findInfoBloc;
  late StreamSubscription findInfoSubscription;

  HotelsInfoBloc(this.findInfoBloc) : super(HotelsInfoInitial()) {
    on<MakeRequestHotels>((event, emit) {
      print(123);
    });
    findInfoSubscription = findInfoBloc.stream.listen((state) {
      print("123");
    });
  }

  @override
  Future<void> close() {
    findInfoSubscription.cancel();
    return super.close();
  }

  Future<HotelsRequest?> fetchHotelsData(LatLng mapPoint) async {
    String checkIn = "2024-03-08";
    String checkOut = "2024-03-21";
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
        return HotelsRequest.fromJson(json.decode(response.body));
      }
    } on Exception catch (ex) {
      print(ex);
    }
    return null;
  }
}
