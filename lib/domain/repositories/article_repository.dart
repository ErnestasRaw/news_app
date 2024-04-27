import 'package:news_app/data/models/article_model.dart';

abstract class ArticleRepository {
  Future<List<ArticleModel>> getArticles({
    int? page = 1,
    int? pageSize = 100,
  });
}
