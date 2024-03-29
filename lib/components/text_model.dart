import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/colors/colors_app.dart';

class TextModel extends StatelessWidget {
   const TextModel({
    super.key,
    required this.title,
    this.fontSize = 20.0,
    this.color= ColorsApp.titleColor,
  });

  final String title;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.abyssinicaSil(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
