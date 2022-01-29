
  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks_ui_app/utils/colors.dart';

Widget welcomeMessageWidget( String title,String title2, String title3) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.manrope(fontSize: 16.0, color: Colors.grey,),
      ),
      subtitle: RichText(
            textAlign: TextAlign.left,
            maxLines: 2,
            text: TextSpan(
              text: title2,
              style: GoogleFonts.manrope(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0.3),
              children: <TextSpan>[
                TextSpan(
                    text: title3,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor)),
              ],
            ),
          ), 
      trailing: Image.asset('assets/images/logo.png', width: 100),
    );
  }