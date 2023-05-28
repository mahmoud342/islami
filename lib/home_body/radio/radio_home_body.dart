import 'package:flutter/material.dart';

import '../../my_theme.dart';

class RadioHomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ///radio img
          Image.asset('assets/images/radio_header_img.png'),
          SizedBox(
            height: 30,
          ),
          ///Holy Quran Radio text
          const Text(
            'Holy Quran Radio',
            style: TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          ///controlls
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///previous
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.skip_previous,
                  color: MyTheme.lightPrimary,
                ),
              ),
              ///play
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.play_circle_outline,
                    color: MyTheme.lightPrimary,
                    size: 35,
                  ),
                ),
              ),
              ///next
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                      Icons.skip_next,
                    color: MyTheme.lightPrimary,
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
