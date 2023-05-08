import 'package:flutter/material.dart';

///this class created to put on it all the attributes of light theme and dark theme an colors.
class MyTheme
{
  static Color lightPrimary = Color(0xffB7935F);

  static ThemeData lightTheme = ThemeData(
    //must determine the primary color because the BNB take primary color from here.
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,

    appBarTheme:  AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),

    textTheme:   TextTheme(
      displaySmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: lightPrimary,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 10,
    )
  );

  static ThemeData darkTheme = ThemeData(

  );
}