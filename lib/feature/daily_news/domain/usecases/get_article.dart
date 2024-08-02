import 'package:news_app_clean_architecture222/core/resources/data_state.dart';
import 'package:news_app_clean_architecture222/core/usecases/usecase.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/domain/entites/article.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/domain/repository/article_repository.dart';

class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>, void>{
    final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}