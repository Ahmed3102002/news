import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/colors/colors_app.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatefulWidget {
  const NewsWebView(
      {super.key, required this.newsUrl, required this.newstitle});

  final String newsUrl;
  final String newstitle;

  @override
  State<NewsWebView> createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  late final WebViewController controller;
  late int loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(
        webViewStates(),
      )
      ..loadRequest(
        Uri.parse(widget.newsUrl),
      );
  }

  NavigationDelegate webViewStates() {
    return NavigationDelegate(
      onPageStarted: (url) => setState(() {
        loadingPercentage = 0;
      }),
      onProgress: (prog) => setState(() {
        loadingPercentage = prog;
      }),
      onPageFinished: (url) => setState(() {
        loadingPercentage = 100;
      }),
      onWebResourceError: (url) => setState(() {
        loadingPercentage > 100;
      }),
    );
  }

  @override
  void dispose() {
    controller.clearCache(); //لحذف الذاكرة المؤقته
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            widget.newstitle,
            style: GoogleFonts.abyssinicaSil(),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Stack(
              children: [
                // WebViewWidget يستخدم المرجع الذي تم إنشاؤه
                WebViewWidget(
                  controller: controller,
                ),
                // إذا كان التحميل لم يكتمل بنسبة 100٪، يظهر LinearProgressIndicator
                if (loadingPercentage < 100)
                  LinearProgressIndicator(
                    color: ColorsApp.linearProgressIndicatorColor,
                    value: loadingPercentage / 100.0,
                  ),
                if (loadingPercentage > 100)
                  Center(
                    child: Text(
                      'Something wrong with this page ! \n try again later',
                      style: GoogleFonts.abyssinicaSil(fontSize: 20),
                    ),
                  )
              ],
            )),
      ),
    );
  }
}
