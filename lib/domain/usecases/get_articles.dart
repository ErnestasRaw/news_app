import 'package:injectable/injectable.dart';
import 'package:news_app/domain/entities/article_entity.dart';
import 'package:news_app/domain/repositories/article_repository.dart';

@injectable
class GetArticles {
  final ArticleRepository _articleRepository;
  GetArticles(this._articleRepository);

  Future<List<ArticleEntity>> call({
    int? page,
    int? pageSize,
  }) async {
    List<ArticleEntity> articles = await _articleRepository.getArticles(
      page: page,
      pageSize: pageSize,
    );
    return articles;
  }
}
