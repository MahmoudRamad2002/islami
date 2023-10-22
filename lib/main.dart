import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/mythem.dart';
import 'package:islami/sura_content.dart';
import 'package:islami/ui/home/Home_Screen.dart';
import 'package:islami/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        themeMode: ThemeMode.light,
        theme: myThemData.lightThem,
        darkTheme: myThemData.darkThem,

        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          SuraContent.routeName: (context) => SuraContent(),
        }
    );
  }
}

