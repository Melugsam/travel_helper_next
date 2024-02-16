import 'dart:io';
import 'package:travel_helper_next/data/models/hotel_class.dart';
import 'dart:convert';

class GetHotels {
  Future<List<HotelClass>?> getHotels(String lat, String lon) async {
    List<HotelClass> res = [];
    return res;
  }
}

Future<void> loadJsonData() async {
  var input = await File('C:/Studing/University/travel_helper_next/lib/data/json/tripadvisor.json').readAsString();
  var map = jsonDecode(input);
  print(map);
}
void main() {
  loadJsonData();
}
