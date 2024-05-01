import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:news_app/core/di/di_config.dart';
import 'package:news_app/domain/entities/article_entity.dart';
import 'package:news_app/presentation/articles_list/store/articles_store.dart';
import 'package:news_app/presentation/articles_list/widgets/article_card.dart';
import 'package:news_app/presentation/scaffolds/app_scaffold.dart';

class ArticleListView extends StatefulWidget {
  const ArticleListView({super.key});

  @override
  State<ArticleListView> createState() => _ArticleListViewState();
}

class _ArticleListViewState extends State<ArticleListView> {
  ArticlesStore articlesStore = locator<ArticlesStore>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      articlesStore.getArticles();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'NewsApp',
      body: Observer(
        builder: (_) {
          final future = articlesStore.articles;

          if (future == null) {
            return const CircularProgressIndicator();
          }

          switch (future.status) {
            case FutureStatus.pending:
              return const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      Text('Loading news...'),
                    ],
                  ),
                ],
              );

            case FutureStatus.rejected:
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Failed to load news.',
                    style: TextStyle(color: Colors.red),
                  ),
                  ElevatedButton(
                    onPressed: _refresh,
                    child: const Text('Tap to try again'),
                  )
                ],
              );

            case FutureStatus.fulfilled:
              final List<ArticleEntity> articles = future.result;
              return RefreshIndicator(
                onRefresh: _refresh,
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: articles.length,
                  itemBuilder: (_, index) {
                    final article = articles[index];
                    return InkWell(
                      onTap: () {
                        articlesStore.onArticleTap(article, context);
                      },
                      child: ArticleCard(article: article),
                    );
                  },
                ),
              );
          }
        },
      ),
    );
  }

  Future _refresh() => articlesStore.fetchArticles();
}
