import 'package:news_app/data/models/article_model.dart';

abstract class ArticleApiSource {
  Future<List<ArticleModel>> getArticles({int? page, int? pageSize});
}
