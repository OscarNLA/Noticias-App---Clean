import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_clean_architecture222/config/theme/app_theme.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news_app_clean_architecture222/feature/daily_news/presentation/pages/home/daily_news.dart';
import 'package:news_app_clean_architecture222/feature/injection_container.dart';

Future <void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const DailyNews()
      )
    );
  }
}


