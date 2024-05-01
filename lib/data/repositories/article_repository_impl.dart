import 'package:injectable/injectable.dart';
import 'package:news_app/data/models/article_model.dart';
import 'package:news_app/data/service/article_api_service.dart';
import 'package:news_app/domain/entities/article_entity.dart';
import 'package:news_app/domain/repositories/article_repository.dart';

@Injectable(as: ArticleRepository)
class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleApiService articleApiService;
  ArticleRepositoryImpl({required this.articleApiService});

  @override
  Future<List<ArticleEntity>> getArticles({
    int? page,
    int? pageSize,
  }) async {
    final response = await articleApiService.getArticles(
      page: page,
      pageSize: pageSize,
    );

    return response.map((e) => e.toEntity()).toList();
  }
}
