import 'package:news_app/domain/entities/article_entity.dart';

abstract class ArticleRepository {
  Future<List<ArticleEntity>> getArticles({int? page, int? pageSize});
}
