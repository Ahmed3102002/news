import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/views/category_view.dart';
import 'package:news/components/text_model.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: TextModel(
            title: category.categoryName,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
