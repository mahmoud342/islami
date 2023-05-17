import 'package:flutter/material.dart';
import 'package:islami/home_body/quran/sura_details_screen.dart';

///this Widget has been created to represent reusable component of Sura Name.
class ItemSuraNameWidget extends StatelessWidget {

  int index;
  String suraNameText ;
  ItemSuraNameWidget({required this.suraNameText , required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(
            SuraNameDetails.routeName,
          /// arguments: will carry obj. from SuraDetailsArgs().
          arguments: SuraDetailsArgs(
              index: index,
              suraNameText: suraNameText
          )
        );
      },
      /// asm el sura clickable wrapped with Inkwell widget.
      child: Text(
        suraNameText,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
