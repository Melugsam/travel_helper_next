part of 'hotels_info_bloc.dart';

abstract class HotelsInfoEvent {}

class MakeRequestHotels extends HotelsInfoEvent{
  final LatLng mapPoint;
  MakeRequestHotels({required this.mapPoint});
}

class SaveDateVariable extends HotelsInfoEvent{
  final String date;
  final int position;
  SaveDateVariable({required this.date, required this.position});
}
