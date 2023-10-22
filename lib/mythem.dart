import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myThemData {
  static const Color lightColor = Color(0xFFB7935F);
  static ThemeData lightThem = ThemeData(

      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: lightColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
        unselectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
      ),
      textTheme: TextTheme(
        titleSmall: GoogleFonts.elMessiri(
            color: Color(0xFF242424),
            fontWeight: FontWeight.bold,
            fontSize: 30
        ),
        bodyLarge: TextStyle(
            color: Color(0xFF242424),
            fontWeight: FontWeight.bold,
            fontSize: 30),
        bodyMedium: TextStyle(
            color: Color(0xFF242424),
            fontWeight: FontWeight.w400,
            fontSize: 24),
        bodySmall: TextStyle(
            color: Color(0xFF242424),
            fontWeight: FontWeight.w300,
            fontSize: 20),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: lightColor,
          size: 30,
        ),
        centerTitle: true,
        color: Colors.transparent,
      )
  );
  static ThemeData darkThem = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,),);
}