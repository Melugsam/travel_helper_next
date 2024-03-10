import 'package:freezed_annotation/freezed_annotation.dart';

part 'monument.freezed.dart';
part 'monument.g.dart';

@freezed
class MonumentData with _$MonumentData {
  const factory MonumentData({
    required String business_id,
    required String name,
    @Default("") String full_address,
    @Default(0) double latitude,
    @Default(0) double longitude,
    @Default(0) int review_count,
    @Default(0) double rating,
    @Default("") String place_id,
    @Default("") String place_link,
    @Default([]) List<String> description,
}) = _MonumentData;

  factory MonumentData.fromJson(Map<String, dynamic> json) =>
      _$MonumentDataFromJson(json);
}

