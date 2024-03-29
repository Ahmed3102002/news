import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/views/news_web_view.dart';
import 'package:news/widgets/news/news_details/news_title.dart';
import 'news_details/news_image.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsWebView(
              newsUrl: articleModel.urlSource,
              newstitle: articleModel.title,
            ),
          ),
        ),
        child: Column(
        // mainAxisSize: MainAxisSize.min,
          children: [
            NewsImage(
              articleModel: articleModel,
            ),
            NewsTitle(articleModel: articleModel),
          ],
        ),
      ),
    );
  }
}
