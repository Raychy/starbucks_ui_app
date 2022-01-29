import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// BorderSide borderSide,
  Widget smallButtonWidget(BuildContext context, Color bgcolor, String title,
      double size,  Color textColor) {
    return ElevatedButton(
        child:   Text(
              title,
              style: GoogleFonts.manrope(
                  fontSize: size,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0.0),
          backgroundColor: MaterialStateProperty.all(
            bgcolor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          // side: MaterialStateProperty.all(
            
          //     borderSide),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
        ),
        );
  }
