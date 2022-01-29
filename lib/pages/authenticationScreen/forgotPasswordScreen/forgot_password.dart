import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks_ui_app/pages/widgets/buttons.dart';
import 'package:starbucks_ui_app/pages/widgets/dontHaveAccountOptions.dart';
import 'package:starbucks_ui_app/pages/widgets/texts.dart';
import 'package:starbucks_ui_app/utils/colors.dart';

class ForgotPassword extends StatelessWidget {
  static const routeName = "/password-page";
  const ForgotPassword({Key key}) : super(key: key);

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
              texts("Forgot Password?", AppColors.primaryColor, FontWeight.bold,
                  16),
                   SizedBox(height: 30),
              Padding(
                 padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 0),
                child: texts(
                    "Don\’t worry! Enter your registered email below to receive password instructions",
                    AppColors.smallTextColor,
                    FontWeight.normal,
                    14),
              ),
                  
              Image.asset('assets/images/pass.png', fit: BoxFit.fitHeight ),
              Padding(
                 padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 0),
                child: Form(
                  child: Column(
                    children: [
                      _emailWidget(),
                      dontHaveAccountWidget(
                          context, 'Remember Password?', "Login", () {}),
                            SizedBox(height: 10),
                        loginWidget(
                          
                            context,
                            AppColors.primaryColor,
                            'Reset Password',
                            16.0,
                            Text(""),
                            BorderSide(color: Colors.transparent, width: 0),
                            Colors.white, ()=> Navigator.pushNamed(context, "/confirm-page"),),
                    ],
                  ),
                ),
              ),
               Padding(
                   padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10),
                 
                 child: dontHaveAccountWidget(
                          context, 'Don\'t have an account?', "Sign Up", () {}),
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
