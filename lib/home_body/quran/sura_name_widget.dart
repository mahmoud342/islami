import 'package:flutter/material.dart';

class SuraNameWidget extends StatelessWidget {

  String suraNameText ;
  SuraNameWidget({required this.suraNameText});

  @override
  Widget build(BuildContext context) {
    return Text(
      suraNameText,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      textAlign: TextAlign.center,
    );
  }
}
