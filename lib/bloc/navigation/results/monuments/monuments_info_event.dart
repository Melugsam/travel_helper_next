part of 'monuments_info_bloc.dart';

abstract class MonumentsInfoEvent {}
class MakeRequestMonuments extends MonumentsInfoEvent{
  final LatLng mapPoint;
  MakeRequestMonuments({required this.mapPoint});
}
