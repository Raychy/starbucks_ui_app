import 'package:flutter/material.dart';
import 'package:starbucks_ui_app/pages/landingScreen/landing_screen.dart';
import 'package:starbucks_ui_app/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StarBucks UI',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      initialRoute: LandingPageScreen.routeName,
      onGenerateRoute: Routes.routes,
    );
  }
}
