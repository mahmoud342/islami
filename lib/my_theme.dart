import 'package:flutter/material.dart';

///this class created to put on it all the attributes of light theme and dark theme an colors.
class MyTheme
{
  static Color lightPrimary =  Color(0xffB7935F);

  //////////////////////////////////////////////////////////////////////////////////////////////

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    //must determine the primary color because the BNB take primary color from here.
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,

      ///light Theme app bar style.
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),

      ///light Theme text style
      textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),

      ///light Theme BNB style
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: lightPrimary,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 10,
    )
  );

//////////////////////////////////////////////////////////////////////////////////////////////

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(

  );
}