import 'package:flutter/material.dart';
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/domain/entities/article_entity.dart';

class PageScaffold extends StatefulWidget {
  final ArticleEntity article;
  final Widget body;
  const PageScaffold({super.key, required this.article, required this.body});

  @override
  State<PageScaffold> createState() => _PageScaffoldState();
}

class _PageScaffoldState extends State<PageScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            stretchTriggerOffset: 200,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Article Details'),
              background: Image.network(
                widget.article.urlToImage ?? replacementImageURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - const SliverAppBar().toolbarHeight - 24.0,
              child: widget.body,
            ),
          ),
        ],
      ),
    );
  }
}
