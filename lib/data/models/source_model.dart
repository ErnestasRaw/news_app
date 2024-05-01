import 'package:json_annotation/json_annotation.dart';
import 'package:news_app/domain/entities/source_entity.dart';

part 'source_model.g.dart';

@JsonSerializable()
class SourceModel {
  String? id;
  String? name;

  SourceModel({this.id, this.name});

  factory SourceModel.fromJson(Map<String, dynamic> json) => _$SourceModelFromJson(json);

  Map<String, dynamic> toJson() => _$SourceModelToJson(this);
}

extension SourceEntityMapper on SourceModel {
  SourceEntity toEntity() {
    return SourceEntity(
      id: id,
      name: name,
    );
  }
}
