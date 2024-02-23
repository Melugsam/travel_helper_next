import 'package:freezed_annotation/freezed_annotation.dart';

part 'attraction.freezed.dart';
part 'attraction.g.dart';

@freezed
class AttractionsData with _$AttractionsData {
  const factory AttractionsData({
    required String id,
    required String type,
    required Geometry geometry,
    required Properties properties,
  }) = _AttracionData;

  factory AttractionsData.fromJson(Map<String, dynamic> json) =>
      _$AttractionsDataFromJson(json);
}

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    required List<double> coordinates
}) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
class Properties with _$Properties {
  const factory Properties({
    @Default("") String wikidata,
    required String name,
    required String kinds,
}) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}
