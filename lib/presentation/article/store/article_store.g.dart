// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ArticleStore on _ArticleStore, Store {
  late final _$webViewControllerAtom =
      Atom(name: '_ArticleStore.webViewController', context: context);

  @override
  WebViewController get webViewController {
    _$webViewControllerAtom.reportRead();
    return super.webViewController;
  }

  bool _webViewControllerIsInitialized = false;

  @override
  set webViewController(WebViewController value) {
    _$webViewControllerAtom.reportWrite(
        value, _webViewControllerIsInitialized ? super.webViewController : null,
        () {
      super.webViewController = value;
      _webViewControllerIsInitialized = true;
    });
  }

  late final _$_ArticleStoreActionController =
      ActionController(name: '_ArticleStore', context: context);

  @override
  void initWebViewController() {
    final _$actionInfo = _$_ArticleStoreActionController.startAction(
        name: '_ArticleStore.initWebViewController');
    try {
      return super.initWebViewController();
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void openWebView(String? url, BuildContext context) {
    final _$actionInfo = _$_ArticleStoreActionController.startAction(
        name: '_ArticleStore.openWebView');
    try {
      return super.openWebView(url, context);
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
webViewController: ${webViewController}
    ''';
  }
}
