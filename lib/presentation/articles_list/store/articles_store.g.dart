// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ArticlesStore on _ArticlesStoreBase, Store {
  late final _$articlesAtom =
      Atom(name: '_ArticlesStoreBase.articles', context: context);

  @override
  ObservableFuture<List<ArticleEntity>>? get articles {
    _$articlesAtom.reportRead();
    return super.articles;
  }

  @override
  set articles(ObservableFuture<List<ArticleEntity>>? value) {
    _$articlesAtom.reportWrite(value, super.articles, () {
      super.articles = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_ArticlesStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$hasErrorAtom =
      Atom(name: '_ArticlesStoreBase.hasError', context: context);

  @override
  bool get hasError {
    _$hasErrorAtom.reportRead();
    return super.hasError;
  }

  @override
  set hasError(bool value) {
    _$hasErrorAtom.reportWrite(value, super.hasError, () {
      super.hasError = value;
    });
  }

  late final _$hasMoreAtom =
      Atom(name: '_ArticlesStoreBase.hasMore', context: context);

  @override
  bool get hasMore {
    _$hasMoreAtom.reportRead();
    return super.hasMore;
  }

  @override
  set hasMore(bool value) {
    _$hasMoreAtom.reportWrite(value, super.hasMore, () {
      super.hasMore = value;
    });
  }

  late final _$currentPageAtom =
      Atom(name: '_ArticlesStoreBase.currentPage', context: context);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$getArticlesAsyncAction =
      AsyncAction('_ArticlesStoreBase.getArticles', context: context);

  @override
  Future<void> getArticles() {
    return _$getArticlesAsyncAction.run(() => super.getArticles());
  }

  late final _$_ArticlesStoreBaseActionController =
      ActionController(name: '_ArticlesStoreBase', context: context);

  @override
  Future<dynamic> fetchArticles() {
    final _$actionInfo = _$_ArticlesStoreBaseActionController.startAction(
        name: '_ArticlesStoreBase.fetchArticles');
    try {
      return super.fetchArticles();
    } finally {
      _$_ArticlesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onArticleTap(ArticleEntity article, BuildContext context) {
    final _$actionInfo = _$_ArticlesStoreBaseActionController.startAction(
        name: '_ArticlesStoreBase.onArticleTap');
    try {
      return super.onArticleTap(article, context);
    } finally {
      _$_ArticlesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
articles: ${articles},
isLoading: ${isLoading},
hasError: ${hasError},
hasMore: ${hasMore},
currentPage: ${currentPage}
    ''';
  }
}
