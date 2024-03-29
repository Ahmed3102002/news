import 'package:flutter/material.dart';
import 'package:news/colors/colors_app.dart';
import 'package:news/widgets/news/news_list_view_builder.dart';
import 'package:news/components/text_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              //fit:BoxFit.fill,
              image: AssetImage(
                "assets/images/views_images/splash.jpg",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Center(
                    child: TextModel(title: '${category.toUpperCase()}')),
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    color:ColorsApp.titleColor,
                  ),
                ),
              ),
              NewsListViewBuilder(
                category: category,
              ),
            ],
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
