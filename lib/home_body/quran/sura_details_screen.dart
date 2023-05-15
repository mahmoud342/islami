import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';

class SuraNameDetails extends StatefulWidget {
  static const String routeName = 'sura_details_screen';

  @override
  State<SuraNameDetails> createState() => _SuraNameDetailsState();
}

class _SuraNameDetailsState extends State<SuraNameDetails> {
  List<String> temp = [];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    ///receive args from SuraNameWidget screen with customization to data class.
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    ///this mean that if temp list is just empty and not contain the content of lines list.
    if (temp.isEmpty) {
      ///load file of a specific index of a specific sura.
      loadFile(args.index);
    }

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
            '${args.suraNameText}',
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
              child: temp.isEmpty
                  ?

                  ///progress if the list is empty
                  Center(
                      child: CircularProgressIndicator(
                      color: MyTheme.lightPrimary,
                    ))
                  :

                  ///listview of sura and item is el aya.
                  ListView.separated(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            '${temp[index]} \n (${index + 1})',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: Divider(
                          color: MyTheme.lightPrimary,
                          thickness: 2,
                        ),
                      ),
                      itemCount: temp.length,
                    )),
        ),
      )
    ]);
  }

  ///loadFile method that used to load the quran files.
  loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');

    ///split the whole string to lines .
    List<String> lines = fileContent.split('\n');
    temp = lines;

    ///this method recall build method.
    setState(() {});
  }
}

/// data class = class model  - represent data & receive index and sura name att.
class SuraDetailsArgs {
  int index;
  String suraNameText;

  SuraDetailsArgs({required this.index, required this.suraNameText});
}
