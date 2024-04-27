import 'package:injectable/injectable.dart';
import 'package:news_app/domain/repositories/article_repository.dart';

@injectable
class GetArticles {
  final ArticleRepository repository;

  GetArticles(this.repository);
}
