import 'package:flutter/material.dart';
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
    );
  }
}
