part of 'monuments_photos_bloc.dart';

abstract class MonumentsPhotosEvent {}

class MakeRequestMonumentsPhotos extends MonumentsPhotosEvent{
  final String businessId;
  MakeRequestMonumentsPhotos({required this.businessId});
}
