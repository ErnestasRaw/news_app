import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/config/theme/sizes.dart';
import 'package:news_app/core/config/theme/styles.dart';
import 'package:news_app/core/helpers/xlist.dart';
import 'package:news_app/domain/entities/article_entity.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key, required this.article});

  final ArticleEntity article;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Card(
        child: Padding(
          padding: Sizes.boxMargins,
          child: Row(
            children: [
              Image.network(
                article.urlToImage ?? replacementImageURL,
                width: constraints.maxWidth * 0.3,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return SizedBox(
                    width: constraints.maxWidth * 0.3,
                    child: const Text(
                      'No image available',
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      article.title ?? '',
                      style: Styles.title,
                    ),
                    // Text(
                    //   article.description ?? '',
                    //   maxLines: 3,
                    //   overflow: TextOverflow.ellipsis,
                    //   style: Styles.description,
                    // ),
                    article.publishedAt == null
                        ? const SizedBox()
                        : Text(
                            dateTimeFormat.format(article.publishedAt!) ?? '',
                            style: Styles.dateTime,
                            textAlign: TextAlign.center,
                          )
                  ],
                ),
              ),
            ].separate(
              const SizedBox(width: Sizes.spacingBig),
            ),
          ),
        ),
      ),
    );
  }
}
