import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news/colors/colors_app.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/3, ),
        child: LoadingAnimationWidget.horizontalRotatingDots(
          color:ColorsApp.backNewsColor ,
          size: 50,
        ),
      ),
    );
  }
}
