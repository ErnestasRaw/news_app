// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:news_app/data/repositories/article_repository_impl.dart' as _i5;
import 'package:news_app/data/service/article_api_service.dart' as _i3;
import 'package:news_app/domain/repositories/article_repository.dart' as _i4;
import 'package:news_app/domain/usecases/get_articles.dart' as _i6;
import 'package:news_app/presentation/articles_list/store/articles_store.dart'
    as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ArticleApiService>(() => _i3.ArticleApiService());
    gh.factory<_i4.ArticleRepository>(() => _i5.ArticleRepositoryImpl(
        articleApiService: gh<_i3.ArticleApiService>()));
    gh.factory<_i6.GetArticles>(
        () => _i6.GetArticles(gh<_i4.ArticleRepository>()));
    gh.factory<_i7.ArticlesStore>(
        () => _i7.ArticlesStore(gh<_i6.GetArticles>()));
    return this;
  }
}
