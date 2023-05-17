import 'package:flutter/material.dart';
import 'package:islami/home_body/quran/sura_details_screen.dart';
import 'hadeth_details_screen.dart';
import 'hadeth_home_body.dart';

///this Widget has been created to represent reusable component of Sura Name.
class ItemHadethNameWidget extends StatelessWidget {

  //String HadethNameText ;
  /// make obj from data class that that is there in hadeth_home_body,
  HadethHomeBodyArgs hadeth;
  ItemHadethNameWidget({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(
            HadethDetailsScreen.routeName,
            /// arguments: will carry obj. from SuraDetailsArgs().
          arguments: hadeth,
        );
      },
      /// asm el sura clickable wrapped with Inkwell widget.
      child: Text(
        //suraNameText,
        //hadeth is obj and contain title and content of hadeth.
        hadeth.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
