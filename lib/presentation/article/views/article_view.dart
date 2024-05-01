import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/config/theme/sizes.dart';
import 'package:news_app/core/config/theme/styles.dart';
import 'package:news_app/core/helpers/xlist.dart';
import 'package:news_app/domain/entities/article_entity.dart';
import 'package:news_app/presentation/article/store/article_store.dart';
import 'package:news_app/presentation/scaffolds/page_scaffold.dart';

class ArticleView extends StatefulWidget {
  final ArticleEntity article;
  final ArticleStore store;

  const ArticleView({super.key, required this.article, required this.store});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  void initState() {
    super.initState();

    widget.store.initWebViewController();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => PageScaffold(
        article: widget.article,
        body: Padding(
          padding: Sizes.pageMargins,
          child: Column(
            children: [
              Text(
                widget.article.title ?? '',
                style: Styles.title,
                textAlign: TextAlign.justify,
              ),
              Text(
                widget.article.description ?? '',
                style: Styles.description,
                textAlign: TextAlign.justify,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        widget.article.author ?? '',
                        style: Styles.dateTime,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  if (widget.article.publishedAt != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          dateTimeFormat.format(widget.article.publishedAt!),
                          style: Styles.dateTime,
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  if (widget.article.url != null && widget.article.url!.isNotEmpty)
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => widget.store.openWebView(widget.article.url, context),
                            child: Text('Read more...'),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ].addSpacing(Sizes.spacingBig),
          ),
        ),
      ),
    );
  }
}
