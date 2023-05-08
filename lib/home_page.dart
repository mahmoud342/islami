import 'package:flutter/material.dart';

import 'home_body/hadeth_home_body.dart';
import 'home_body/quran_home_body.dart';
import 'home_body/radio_home_body.dart';
import 'home_body/tasbeh_home_body.dart';
import 'my_theme.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ///background
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.displaySmall,
              // style: TextStyle(
              //   color: Colors.black,
              //   fontSize: 25,
              //   fontFamily: 'bold',
              // ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),

          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              //canvasColor: MyTheme.lightPrimary,
              //canvasColor: Theme.of(context).primaryColor,
              canvasColor: MyTheme.lightTheme.primaryColor,
            ),
            child: BottomNavigationBar(
              selectedItemColor: Colors.black,
              ///static index = 0
              currentIndex: selectedIndex,
              ///dynamic index...
              onTap: (index){
                /// selected index will be updated from here.
                selectedIndex = index;
                setState(() {

                });
              },

              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                  ),
                  label: 'radio',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                  ),
                  label: 'tasbeh',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png'),
                  ),
                  label: 'hadeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                  ),
                  label: 'Quran',
                ),
              ],
            ),
          ),
          body: bodies[selectedIndex],
        ),
      ],
    );
  }
  ///create list of bodies
  List<Widget> bodies = [
    RadioHomeBody(),
    TasbehHomeBody() ,
    HadethHomeBody(),
    QuranHomeBody() ,
  ];
}


