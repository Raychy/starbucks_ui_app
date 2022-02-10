import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks_ui_app/pages/widgets/authWidget/loginForm.dart';
import 'package:starbucks_ui_app/pages/widgets/authWidget/slider.dart';
import 'package:starbucks_ui_app/pages/widgets/authWidget/welcomeMesgWidget.dart';
import 'package:starbucks_ui_app/pages/widgets/buttons.dart';
import 'package:starbucks_ui_app/pages/widgets/dontHaveAccountOptions.dart';
import 'package:starbucks_ui_app/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login-page";
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              welcomeMessageWidget("Good Morning  👋", "Welcome back!", ""),
              // Starbucks Promotion

              _displayName(),
              SizedBox(height: 20),

              SliderItems(),
              LoginForm(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 2,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'OR',
                    style: GoogleFonts.manrope(
                        fontSize: 16.0,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 2,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 30),
              loginWidget(
                  context,
                  Colors.blue,
                  "Login with Facebook",
                  14.0,
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset("assets/images/facebook.png"),
                  ),
                  BorderSide(color: Colors.transparent, width: 0),
                  Colors.white,
                  () {}),
              SizedBox(height: 10),
              loginWidget(
                  context,
                  Colors.white,
                  "Login with Google",
                  14.0,
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset("assets/images/google.png"),
                  ),
                  BorderSide(color: Colors.grey, width: 2),
                  Colors.black,
                  () {}),
              dontHaveAccountWidget(
                  context,
                  'Don\'t have an account?',
                  "Sign Up",
                  () => Navigator.pushNamed(context, "/register-page")),
            ],
          ),
        ),
      ),
    );
  }

  Widget _displayName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          text: 'Starbucks ',
          style: GoogleFonts.manrope(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
          children: <TextSpan>[
            TextSpan(
                text: 'Promotion',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.smallTextColor)),
          ],
        ),
      ),
    );
  }
}
