import 'package:news_app_clean_architecture222/core/resources/data_state.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/domain/entites/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}