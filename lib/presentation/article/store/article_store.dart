import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:news_app/core/config/theme/palette.dart';
import 'package:news_app/domain/entities/article_entity.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'article_store.g.dart';

class ArticleStore = _ArticleStore with _$ArticleStore;

abstract class _ArticleStore with Store {
  final ArticleEntity article;

  _ArticleStore(this.article);

  @observable
  late WebViewController webViewController;

  @action
  void initWebViewController() {
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Palette.black)
      ..loadRequest(Uri.parse(article.url!));
  }

  @action
  void openWebView(String? url, BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Article'),
          ),
          body: WebViewWidget(
            controller: webViewController,
          ),
        ),
      ),
    );
  }
}
