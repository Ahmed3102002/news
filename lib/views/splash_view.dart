// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/widgets/animation_widgets/loading_animation.dart';
import 'package:news/widgets/buttons/begin_button.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/views_images/splash.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children:  [
                  LoadingAnimation() ,
                  SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
                  BeginButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
