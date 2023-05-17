import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home_body/hadeth/hadeth_home_body.dart';
import 'package:islami/my_theme.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details_screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  ///idon't need it because the file will be shown directly.
  //List<String> temp = [];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    ///receive args from SuraNameWidget screen with customization to data class.(HadethHomeBodyArgs but no HadethDetailsArgs)
    var hadethArgs = ModalRoute.of(context)?.settings.arguments as HadethHomeBodyArgs;

    ///this mean that if temp list is just empty and not contain the content of lines list.
    return Stack(children: [
      ///background
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),

      Scaffold(
        appBar: AppBar(
          ///asm el sura as a title.
          title: Text(
            hadethArgs.title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),

        ///container of body of content of sura.
        body: Center(
          child: Container(
              width: width * 0.9,
              height: height * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(30),
              ),

              ///child of container is the list view.
              ///listview of sura and item is el aya.
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      hadethArgs.content[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                ),
                itemCount: hadethArgs.content.length,
                // itemCount: 1,
              )),
        ),
      )
    ]);
  }

  ///loadFile method that used to load the quran files.
  // loadFile(int index) async {
  //   String fileContent =
  //   await rootBundle.loadString('assets/files/${index + 1}.txt');
  //
  //   ///split the whole string to lines .
  //   List<String> lines = fileContent.split('\n');
  //   temp = lines;
  //
  //   ///this method recall build method.
  //   setState(() {});
  // }
}

// /// data class = class model  - represent data & receive index and sura name att.
// class HadethDetailsArgs {
//   String suraNameText;
//
//   HadethDetailsArgs({required this.suraNameText});
// }
