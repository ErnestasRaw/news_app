import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/data/models/article_model.dart';

@injectable
class ArticleApiService {
  final Dio _dio = Dio();

  Future<List<ArticleModel>> getArticles({int? page, int? pageSize}) async {
    late final Response response;
    try {
      response = await _dio.get(
        'https://newsapi.org/v2/top-headlines?category=technology&country=us&pageSize=100&page=1&apiKey=fba50b58b8a540b68fb9b7a67f210720',
      );
    } catch (e) {
      Exception(e);
    }
    List<ArticleModel> articles =
        response.data['articles'].map<ArticleModel>((article) => ArticleModel.fromJson(article)).toList();

    return articles;
  }
}
