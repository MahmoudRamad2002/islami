import 'package:flutter/material.dart';
import 'package:islami/styel/color_app.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: colorApp.primaryColor,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: colorApp.BlackColor)),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: colorApp.BlackColor,
        fontWeight: FontWeight.w700,
      ),
      headline2: TextStyle(
        fontSize: 25,
        color: colorApp.BlackColor,
        fontWeight: FontWeight.w400,
      ),
      headline3: TextStyle(
        fontSize: 25,
        color: colorApp.WhiteColor,
        fontWeight: FontWeight.w400,
      ),
      subtitle1: TextStyle(
        fontSize: 25,
        color: colorApp.BlackColor,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
        color: colorApp.BlackColor,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorApp.BlackColor,
        unselectedItemColor: Colors.white),
  );

  static final ThemeData darkTheme = ThemeData(
      primaryColor: colorApp.primaryColorDark,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: colorApp.WhiteColor)),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: colorApp.WhiteColor,
          fontWeight: FontWeight.w700,
        ),
        headline2: TextStyle(
          fontSize: 25,
          color: colorApp.YellowColor,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: TextStyle(
          fontSize: 25,
          color: colorApp.YellowColor,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: TextStyle(
          fontSize: 20,
          color: colorApp.YellowColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: colorApp.YellowColor,
          unselectedItemColor: Colors.white));
}
