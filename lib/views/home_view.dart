import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/colors/colors_app.dart';
import 'package:news/widgets/categories/categories_list_view.dart';

import '../widgets/news/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              //fit:BoxFit.fill,
              image: AssetImage(
                "assets/images/views_images/splash.jpg",
              ),
              fit: BoxFit.fill,
            ),
          ),
          //color: const Color.fromRGBO(56, 30, 17, 10),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            //تقوم بمسح العلامة الزرقاء التى تظهر مع الوصول الي نهاية
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  child: Center(
                    child: Text(
                      'New`s Cloud',
                      style: GoogleFonts.abyssinicaSil(
                        color: ColorsApp.titleColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              const NewsListViewBuilder(
                category: 'general',
              ),
            ],
          ),
          // child: Column(
          //   children: [
          //     CategoriesListView(),
          //     SizedBox(
          //       height: 32,
          //     ),
          //     Expanded(child: NewsListView()),
          //   ],
          // ),
        ),
      ),
    );
  }
}
