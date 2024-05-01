import 'package:json_annotation/json_annotation.dart';
import 'package:news_app/data/models/source_model.dart';
import 'package:news_app/domain/entities/article_entity.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  SourceModel? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;

  ArticleModel({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}

extension ArticleEntityMapper on ArticleModel {
  ArticleEntity toEntity() {
    return ArticleEntity(
      source: source?.toEntity(),
      author: author,
      title: title,
      description: description,
      url: url,
      urlToImage: urlToImage,
      publishedAt: publishedAt,
      content: content,
    );
  }
}
