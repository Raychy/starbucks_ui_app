import 'package:flutter/material.dart';
import 'package:starbucks_ui_app/pages/authenticationScreen/confirmScreen/confirm.dart';
import 'package:starbucks_ui_app/pages/authenticationScreen/forgotPasswordScreen/forgot_password.dart';
import 'package:starbucks_ui_app/pages/authenticationScreen/loginScreen/loginScreen.dart';
import 'package:starbucks_ui_app/pages/authenticationScreen/registerScreen/register.dart';
import 'package:starbucks_ui_app/pages/authenticationScreen/registerScreen/second_register_screen.dart';
import 'package:starbucks_ui_app/pages/landingScreen/landing_screen.dart';

class Routes{
  //  
  static Route<dynamic> routes(RouteSettings settings){
    var args = settings.arguments;
    var routeName = settings.name;
    switch (routeName) {
      case LandingPageScreen.routeName:
        return  MaterialPageRoute(builder: (context){
          return LandingPageScreen();
        });
        break;
        // 
          case LoginScreen.routeName:
        return  MaterialPageRoute(builder: (context){
          return LoginScreen();
        });
        break;
         case RegisterScreen.routeName:
        return  MaterialPageRoute(builder: (context){
          return RegisterScreen();
        });
        break;
         case SecondRegisterScreen.routeName:
        return  MaterialPageRoute(builder: (context){
          return SecondRegisterScreen();
        });
        break;
          case ForgotPassword.routeName:
        return  MaterialPageRoute(builder: (context){
          return ForgotPassword();
        });
          case ConfirmScreen.routeName:
        return  MaterialPageRoute(builder: (context){
          return ConfirmScreen();
        });
        break;
      default: LandingPageScreen();
    }
  }
}
