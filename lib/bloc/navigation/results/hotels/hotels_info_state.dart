part of 'hotels_info_bloc.dart';

abstract class HotelsInfoState {
}

class HotelsInfoInitial extends HotelsInfoState {}
class HotelsInfoLoadingState extends HotelsInfoState {}
class HotelsInfoReceivedState extends HotelsInfoState {
  final HotelsResponse response;
  HotelsInfoReceivedState({required this.response});
}
class HotelsInfoErrorState extends HotelsInfoState {}
