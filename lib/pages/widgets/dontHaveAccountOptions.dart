  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks_ui_app/utils/colors.dart';

Widget dontHaveAccountWidget(
    BuildContext context, String title, String rightText, Function function
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.manrope(
              fontSize: 16.0,
              // fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),
        SizedBox(width: 20),
        TextButton(
            onPressed: function,
            child: Text(
              rightText,
              style: GoogleFonts.manrope(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ))
      ],
    );
  }