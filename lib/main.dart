import 'package:flutter/material.dart';
import 'package:islami/home_body/quran/sura_details_screen.dart';
import 'package:islami/home_body/quran/sura_name_widget.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/splash_screen.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
       HomePage.routeName : (context) => HomePage(),
       SplashScreen.routeName : (context) => SplashScreen(),
        SuraNameDetails.routeName : (context) => SuraNameDetails(),
     },
      initialRoute: SplashScreen.routeName,
      ///light theme and darkTheme of type ThemeData.
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
