import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks_ui_app/pages/widgets/authWidget/welcomeMesgWidget.dart';
import 'package:starbucks_ui_app/pages/widgets/small_button.dart';
import 'package:starbucks_ui_app/utils/colors.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = "/register-page";

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  bool _isChecked = true;
  String _currText = '';
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset("assets/images/back.png"),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pushNamed(context, '/register_second_-page'),
              child: Text("Next",
                  style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor)))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: welcomeMessageWidget("Hi  👋", "Welcome to", " Starbucks"),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 26.0, vertical: 10),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    smallButtonWidget(
                      context,
                      AppColors.primaryColor,
                      "Login Details",
                      14.0,
                      Colors.white,
                    ),
                    SizedBox(height: 0),
                    _usernameWidget(),
                    SizedBox(height: 10),
                    _passwordWidget(),
                    SizedBox(height: 10),
                    _confirmPasswordWidget(),
                    SizedBox(height: 10),
                    smallButtonWidget(
                      context,
                      AppColors.primaryColor,
                      "Register your Startbucks card",
                      14.0,
                      Colors.white,
                    ),
                    SizedBox(height: 10),
                    _cardNumberWidget(),
                    SizedBox(height: 10),
                    _securityCodeWidget(),
                    // _checkBoxWidget(),
                    SizedBox(height: 10),
                    smallButtonWidget(
                      context,
                      AppColors.primaryColor,
                      "Personal Details",
                      14.0,
                      Colors.white,
                    ),
                    SizedBox(height: 10),
                    _salutationWidget(),
                    SizedBox(height: 10),
                    _firstnameWidget(),
                    SizedBox(height: 10),
                    _lastNameWidget()
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget _checkBoxWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
            value: _isChecked,
            splashRadius: 5.0,
            fillColor: MaterialStateProperty.all(AppColors.primaryColor),
            onChanged: (newValue) => setState(() => _isChecked = newValue)),
        Text('Keep me logged In',
            style: GoogleFonts.manrope(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.smallTextColor)),
        SizedBox(width: 10),
        TextButton(
            onPressed: () => Navigator.pushNamed(context, "/password-page"),
            child: Text(
              "Forgot Password?",
              style: GoogleFonts.manrope(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ))
      ],
    );
  }

  Widget _passwordWidget() {
    return TextFormField(
      cursorColor: Colors.black,
      textInputAction: TextInputAction.next,
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        // filled: true,
        hintText: "Password",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
        suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye_outlined), onPressed: () {}),
      ),
    );
  }

  Widget _usernameWidget() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        hintText: "Email",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
      ),
    );
  }

  Widget _salutationWidget() {
    return TextFormField(
      cursorColor: Colors.black,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        hintText: "Salutation",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
      ),
    );
  }

  Widget _firstnameWidget() {
    return TextFormField(
      cursorColor: Colors.black,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        hintText: "First Name",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
      ),
    );
  }

  Widget _lastNameWidget() {
    return TextFormField(
      cursorColor: Colors.black,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        hintText: "Last Name",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
      ),
    );
  }

  Widget _confirmPasswordWidget() {
    return TextFormField(
      cursorColor: Colors.black,
      textInputAction: TextInputAction.next,
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        // filled: true,
        hintText: "Confirm Password",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
        suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye_outlined), onPressed: () {}),
      ),
    );
  }

  Widget _cardNumberWidget() {
    return TextFormField(
      cursorColor: Colors.black,
      textInputAction: TextInputAction.next,
      // obscureText: true,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        // filled: true,
        hintText: "Card Number",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
      
      ),
    );
  }

  Widget _securityCodeWidget() {
    return TextFormField(
      cursorColor: Colors.black,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        hintText: "Security Code",
        hintStyle: GoogleFonts.manrope(fontSize: 13),
        focusColor: Colors.black,
      ),
    );
  }
}
