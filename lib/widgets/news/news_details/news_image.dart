import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/utils/functions.dart';
class NewsImage extends StatelessWidget {
  const NewsImage({super.key, required this.articleModel});

  final ArticleModel articleModel;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
      ),
      child: articleModel.image != null
          ? Image.network(
              articleModel.image!,
              height: MediaQuery.of(context).size.height *0.3,
              width: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: loadingImage,
              errorBuilder: errorImage,
            )
          : Image.asset(
              'assets/images/sub_network_image/sub_image.jpg',
              height: MediaQuery.of(context).size.height *0.3,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
    );
  }
}
