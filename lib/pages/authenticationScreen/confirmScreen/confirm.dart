import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks_ui_app/pages/widgets/buttons.dart';
import 'package:starbucks_ui_app/pages/widgets/dontHaveAccountOptions.dart';
import 'package:starbucks_ui_app/pages/widgets/texts.dart';
import 'package:starbucks_ui_app/utils/colors.dart';

class ConfirmScreen extends StatelessWidget {
  static const routeName = "/confirm-page";
  const ConfirmScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(height: 10),
              Image.asset('assets/images/logo.png', width: 100),
               SizedBox(height: 30),
              texts("Email Sent!", AppColors.primaryColor, FontWeight.bold,
                  18),
                   SizedBox(height: 30),
              Padding(
                 padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 0),
                child: texts(
                    "We've sent a password reset link to",
                    AppColors.smallTextColor,
                    FontWeight.normal,
                    14),
              ),
                  
                   Padding(
                 padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 0),
                child: texts(
                    "princessade33@gmail.com",
                    AppColors.smallTextColor,
                    FontWeight.bold,
                    14),
              ),
              Image.asset('assets/images/sent_box.png', fit: BoxFit.fitHeight ),
              Padding(
                 padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 0),
                child: Form(
                  child: Column(
                    children: [
                      _emailWidget(),
                      dontHaveAccountWidget(
                          context, 'Didn\'t received ?', "Resend", () {}),
                            SizedBox(height: 10),
                        loginWidget(
                          
                            context,
                            AppColors.primaryColor,
                            'Back to Login',
                            16.0,
                            Text(""),
                            BorderSide(color: Colors.transparent, width: 0),
                            Colors.white, () {}),
                    ],
                  ),
                ),
              ),
               Padding(
                   padding: const EdgeInsets.symmetric( 
                          horizontal: 30.0, vertical: 10),
                 
                 child: dontHaveAccountWidget(
                          context, '', "Contact Us", () {}),
               ),
            ],
          ),
        ),
      )),
    );
  }

  Widget _emailWidget() {
    return TextFormField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2)),
        hintText: "Email",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
      ),
    );
  }
}
