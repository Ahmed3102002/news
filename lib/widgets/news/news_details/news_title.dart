import 'package:flutter/material.dart';
import 'package:news/colors/colors_app.dart';
import 'package:news/models/article_model.dart';
import 'package:news/components/text_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: ColorsApp.backNewsColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          TextModel(
            title: articleModel.title,
          ),
           SizedBox(
            height :MediaQuery.of(context).size.height *0.01248,
          ),
          TextModel(
            title: articleModel.description ?? '....',
            fontSize: 16,
            color: ColorsApp.descriptionColor,
          ),
        ],
      ),
    );
  }
}