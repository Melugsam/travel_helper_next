import 'package:freezed_annotation/freezed_annotation.dart';

part 'monument_photos.freezed.dart';
part 'monument_photos.g.dart';

@freezed
class MonumentPhoto with _$MonumentPhoto {
  const factory MonumentPhoto({
    required List<String> photos,
}) = _MonumentPhoto;

  factory MonumentPhoto.fromJson(Map<String, dynamic> json) =>
      _$MonumentPhotoFromJson(json);
}