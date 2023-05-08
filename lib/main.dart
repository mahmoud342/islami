import 'package:flutter/material.dart';
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
     },
      initialRoute: SplashScreen.routeName,
      ///light theme and darkTheme of type ThemeData.
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
    );
  }
}
