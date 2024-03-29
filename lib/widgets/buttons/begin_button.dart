import 'package:flutter/material.dart';
import 'package:news/colors/colors_app.dart';
import 'package:news/views/home_view.dart';
import 'package:news/components/text_model.dart';

class BeginButton extends StatelessWidget {
  const BeginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeView(),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.titleColor,
      ),
      child: const TextModel(
        title: 'Let`s begin.... ',
        color: ColorsApp.backNewsColor,
      ),
    );
  }
}