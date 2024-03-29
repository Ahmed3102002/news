import 'package:flutter/material.dart';
import 'package:news/colors/colors_app.dart';
import 'package:news/components/text_model.dart';

class ShowError extends StatelessWidget {
  const ShowError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SnackBar(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        backgroundColor: ColorsApp.backNewsColor,
        content:  TextModel(
          title: 'oops  was an error, try later',
          fontSize: 30,
        ),
      ),
    );
  }
}
