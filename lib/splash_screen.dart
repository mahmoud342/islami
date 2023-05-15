import 'package:flutter/material.dart';
import 'package:islami/home_page.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  void initState()
  {
    super.initState();
    _navigateFromSplash();
  }

  _navigateFromSplash()async{
    await Future.delayed(
        Duration( milliseconds: 3000), (){}
    );
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/images/splash_screen.png'),
        ),
      ),
    );
  }
}