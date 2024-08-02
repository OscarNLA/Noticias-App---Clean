import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/domain/entites/article.dart';

abstract class RemoteArticleState extends Equatable{
  final List<ArticleEntity> ? articles;
  final DioError ? error;

  const RemoteArticleState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticleLoading extends RemoteArticleState{
  const RemoteArticleLoading();
} // estado donde hace la solicitud y se espera que el servicio devuelva los datos

class RemoteArticlesDone extends RemoteArticleState {
  const RemoteArticlesDone(List<ArticleEntity> article) : super(articles: article);
} //datos recibidos

class RemoteArticlesError extends RemoteArticleState {
  const RemoteArticlesError(DioError error) : super(error: error);
} //datos no recibidos

