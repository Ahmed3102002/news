import 'package:flutter/material.dart';
import 'package:news/widgets/news/news_details/loading.dart';
import 'package:webview_flutter/webview_flutter.dart';

Widget loadingImage(context, child, loadingProcess) =>
    loadingProcess != null ? const LoadingState() : child
/*CachedNetworkImage(imageUrl: articleModel.image!)*/
;

Widget errorImage(context, error, stackTrace) => Image.asset(
  'assets/images/sub_network_image/error_image.jpg',
  height:  MediaQuery.of(context).size.height *0.3120,
  width: double.infinity,
  fit: BoxFit.fill,
);
