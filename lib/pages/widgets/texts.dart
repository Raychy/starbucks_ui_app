  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget texts(
      String title, Color color, FontWeight fontWeight, double fontSize) {
    return Text(title,
    textAlign: TextAlign.center,
        style: GoogleFonts.manrope(
            fontSize: fontSize, fontWeight: fontWeight, color: color));
  }