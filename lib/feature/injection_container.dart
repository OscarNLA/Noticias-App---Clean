import 'package:news_app_clean_architecture222/feature/daily_news/data/data_sources/remote/news_api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/data/repository/article_repository_impl.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/domain/repository/article_repository.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/domain/usecases/get_article.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  sl.registerSingleton<ArticleRepository>(
  ArticleRepositoryImpl(sl())
  );

  //casosdeuso
  sl.registerSingleton<GetArticleUseCase>(
    GetArticleUseCase(sl())
  );

  sl.registerFactory<RemoteArticlesBloc>(
    () => RemoteArticlesBloc(sl())
    );

}