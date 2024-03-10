import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_helper_next/data/models/monument/monument.dart';
import 'package:travel_helper_next/data/models/monument/photos/monument_photos.dart';

part 'monument_photo_response.freezed.dart';
part 'monument_photo_response.g.dart';

@freezed
class MonumentPhotoResponse with _$MonumentPhotoResponse {
  const factory MonumentPhotoResponse({
    required MonumentPhoto data,
}) = _MonumentPhotoResponse;

  factory MonumentPhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$MonumentPhotoResponseFromJson(json);
}