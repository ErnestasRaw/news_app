import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/config/constants.dart';
import 'package:news_app/data/models/article_model.dart';
import 'package:news_app/data/sources/article_api_source.dart';

@Injectable(as: ArticleApiSource)
class ArticleApiSourceImpl implements ArticleApiSource {
  final Dio client;

  ArticleApiSourceImpl({required this.client});

  //TODO model for api response
  //TODO dio client helper for handling api request
  @override
  Future<List<ArticleModel>> getArticles({
    int? page = 1,
    int? pageSize = 100,
  }) async {
    final response = await client.get('$baseUrl/top-headlines?pageSize=$pageSize&page=$page&apiKey=$apiKey');

    if (response.statusCode == 200) {
      if (response.data['status'] == 'error') {
        throw Exception([response.data['message'], response.data['code']]);
      }
      if (response.data['totalResults'] == 0) {
        throw Exception('No articles found');
      }

      final List<dynamic> articles = jsonDecode(response.data);
      return articles.map<ArticleModel>((article) => ArticleModel.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load articles');
    }
  }
}
