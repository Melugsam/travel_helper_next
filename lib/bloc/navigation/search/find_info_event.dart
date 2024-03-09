part of 'find_info_bloc.dart';

abstract class FindInfoEvent {}

class FindButtonEvent extends FindInfoEvent{
  final LatLng mapPoint;
  FindButtonEvent(this.mapPoint);
}