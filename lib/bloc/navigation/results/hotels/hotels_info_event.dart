part of 'hotels_info_bloc.dart';

abstract class HotelsInfoEvent {}

class MakeRequestHotels extends HotelsInfoEvent{
  final LatLng mapPoint;
  final String checkInDate;
  final String checkOutDate;
  MakeRequestHotels({required this.mapPoint, required this.checkInDate, required this.checkOutDate});
}

class SaveDateVariable extends HotelsInfoEvent{
  final String date;
  final int position;
  SaveDateVariable({required this.date, required this.position});
}
