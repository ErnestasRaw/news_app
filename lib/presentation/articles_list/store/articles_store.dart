import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:news_app/domain/entities/article_entity.dart';
import 'package:news_app/domain/usecases/get_articles.dart';
import 'package:news_app/presentation/article/store/article_store.dart';
import 'package:news_app/presentation/article/views/article_view.dart';

part 'articles_store.g.dart';

@injectable
class ArticlesStore = _ArticlesStoreBase with _$ArticlesStore;

abstract class _ArticlesStoreBase with Store {
  _ArticlesStoreBase(this._getArticles);
  final GetArticles _getArticles;

  @observable
  ObservableFuture<List<ArticleEntity>>? articles;

  @action
  Future fetchArticles() => articles = ObservableFuture(_getArticles());

  @action
  void onArticleTap(ArticleEntity article, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ArticleView(
          article: article,
          store: ArticleStore(article),
        ),
      ),
    );
  }

  @observable
  bool isLoading = false;

  @observable
  bool hasError = false;

  @observable
  bool hasMore = true;

  @observable
  int currentPage = 1;

  @action
  Future<void> getArticles() async {
    try {
      if (isLoading) return;
      isLoading = true;
      fetchArticles().then(
        (value) {
          if (value.value!.isEmpty) {
            hasMore = false;
          } else {
            currentPage++;
          }
        },
      );
    } catch (e) {
      hasError = true;
      Exception(e);
    } finally {
      isLoading = false;
    }
  }
}
