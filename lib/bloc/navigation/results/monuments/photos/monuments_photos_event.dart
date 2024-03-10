part of 'monuments_photos_bloc.dart';

abstract class MonumentsPhotosEvent {}

class MakeRequestMonumentsPhotos extends MonumentsPhotosEvent{
  final String business_id;
  MakeRequestMonumentsPhotos({required this.business_id});
}
