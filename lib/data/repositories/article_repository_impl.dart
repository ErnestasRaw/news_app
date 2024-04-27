import 'package:injectable/injectable.dart';
import 'package:news_app/data/models/article_model.dart';
import 'package:news_app/data/sources/article_api_source.dart';
import 'package:news_app/domain/repositories/article_repository.dart';

@Injectable(as: ArticleRepository)
class ArticleRepositoryImpl implements ArticleRepository {
  ArticleRepositoryImpl({required this.articleApiSource});

  final ArticleApiSource articleApiSource;

  @override
  Future<List<ArticleModel>> getArticles({
    int? page = 1,
    int? pageSize = 100,
  }) async {
    final response = await articleApiSource.getArticles(
      page: page,
      pageSize: pageSize,
    );
    return response;
  }
}
