import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLargeText extends StatelessWidget {
  final String text;
  double size;
  final Color color;
  AppLargeText({Key? key, required this.text, this.size = 24, this.color=Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 24
      ),
    );
  }
}

class AppText extends StatelessWidget {
  final String text;
  double size;
  final Color color;
  FontWeight weight;

  AppText({Key? key, required this.text, this.size = 20, this.color=Colors.black,this.weight = FontWeight.w500,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
          color: color,
          fontWeight: weight,
          fontSize: size
      ),
    );
  }
}


class AppItalicsText extends StatelessWidget {
  final String text;
  double size;
  FontWeight weight;
  FontStyle fontStyle;
  final Color color;

  AppItalicsText({Key? key, required this.text, this.color=Colors.black,this.size = 16, this.weight = FontWeight.w500, this.fontStyle = FontStyle.italic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
          fontWeight: weight,
          fontSize: size,
        fontStyle: fontStyle,
        color: color
      ),
    );
  }
}
