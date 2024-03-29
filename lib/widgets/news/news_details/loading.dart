import 'package:flutter/material.dart';
import 'package:news/colors/colors_app.dart';
import 'package:news/components/text_model.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height *0.3,
      //margin: const EdgeInsets.only(bottom: 5),
      decoration: const BoxDecoration(
        color: ColorsApp.backNewsColor,
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Center(
            child: CircularProgressIndicator(
              color: ColorsApp.titleColor,
            ),
          ),
           SizedBox(
            height:   MediaQuery.of(context).size.height *0.05,
          ),
          const TextModel(title: 'Loading ... '),
          SizedBox(
            height:  MediaQuery.of(context).size.height *0.02,
          ),
          const Divider(
            color: ColorsApp.titleColor,
          ),
        ],
      ),
    );
  }
}