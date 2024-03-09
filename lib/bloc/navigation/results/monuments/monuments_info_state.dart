part of 'monuments_info_bloc.dart';

abstract class MonumentsInfoState {}

class MonumentsInfoInitial extends MonumentsInfoState {}
class MonumentInfoLoading extends MonumentsInfoState{}
class MonumentInfoReceived extends MonumentsInfoState{
  final MonumentsResponse monumentsResponse;
  MonumentInfoReceived({required this.monumentsResponse});
}
class MonumentInfoError extends MonumentsInfoState{}
