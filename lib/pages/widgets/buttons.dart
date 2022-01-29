import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

  Widget loginWidget(BuildContext context, Color bgcolor, String title,
      double size, Widget icon, BorderSide borderSide, Color textColor, Function pressButton) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                title,
                style: GoogleFonts.manrope(
                    fontSize: size,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
            ],
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
            side: MaterialStateProperty.all(
                //  BorderSide(2.0)
                borderSide),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
          ),
          onPressed:  pressButton),
    );
  }
