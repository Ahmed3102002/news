import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/animation_widgets/loading_animation.dart';
import 'package:news/widgets/news/show_error.dart';

import '../../services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  Future<List<ArticleModel>>? _future;

  @override
  void initState() {
    super.initState();
    _future = NewsService().getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(child: ShowError());
          } else {
            return const SliverToBoxAdapter(
              child: LoadingAnimation(),
            );
          }
        });
  }
}
