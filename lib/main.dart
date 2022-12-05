import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/representation/screens/forgot_password_screen.dart';
import 'package:travel_app/representation/screens/login_screen.dart';
import 'package:travel_app/representation/screens/main_app.dart';
import 'package:travel_app/representation/screens/signup_screen.dart';
import 'package:travel_app/representation/screens/splash_screen.dart';
import 'package:travel_app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
          primaryColor: ColorPalette.primaryColor,
          scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
          backgroundColor: ColorPalette.backgroundColor),
      home: const MyHomePage(),
      routes: routes,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LoginScreen(),
      ),
    );
  }
}
