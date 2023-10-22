import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/ui/home/Home_Screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () =>
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),

        child: Image.asset(
          'assets/images/splash_screen.png', width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,),

      ),);
  }
}
