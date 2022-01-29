import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks_ui_app/pages/widgets/buttons.dart';
import 'package:starbucks_ui_app/utils/colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
    bool _isChecked = true;
  String _currText = '';
  @override
  Widget build(BuildContext context) {
    return               Container(
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 26.0, vertical: 10),
                        child: _usernameWidget(),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 26.0, vertical: 10),
                        child: _passwordWidget(),
                      ),
                      _checkBoxWidget(),
                      SizedBox(height: 10),
                      loginWidget(
                        
                          context,
                          AppColors.primaryColor,
                          'Login',
                          16.0,
                          Text(""),
                          BorderSide(color: Colors.transparent, width: 0),
                          Colors.white, () {}),
                    ],
                  ),
                ),
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
            onPressed: ()=> Navigator.pushNamed(context, "/password-page"),
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
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2)),
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