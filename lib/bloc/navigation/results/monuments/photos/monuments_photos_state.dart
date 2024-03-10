part of 'monuments_photos_bloc.dart';

abstract class MonumentsPhotosState {}

class MonumentsPhotosInitial extends MonumentsPhotosState {}
class MonumentPhotosLoading extends MonumentsPhotosState{}
class MonumentPhotosReceived extends MonumentsPhotosState{
  final Widget photoWidget;
  MonumentPhotosReceived({required this.photoWidget});
}
class MonumentPhotosError extends MonumentsPhotosState{}
