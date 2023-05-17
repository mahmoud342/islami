import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../my_theme.dart';
import 'item_hadeth_name_widget.dart';

class HadethHomeBody extends StatefulWidget {
  static const String routeName = 'hadeth_home_body';

  @override
  State<HadethHomeBody> createState() => _HadethHomeBodyState();
}

class _HadethHomeBodyState extends State<HadethHomeBody> {
  /// we will use it in listView.
  /// this list carry obj of data class and the obj carry title and content.
  List<HadethHomeBodyArgs> hadethList = [];

  @override
  Widget build(BuildContext context) {
    ///filling the hadeth list. ///if you didn't add this block the list was filled also.
    if(hadethList.isEmpty)
    {
      loadHadethFile();
    }
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/hadeth_header_img.png'),

            Divider(
              //color: Theme.of(context).primaryColor,
              color: MyTheme.lightPrimary,
              thickness: 2,
            ),

            const Text(
              'Hadeth Name',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            Divider(
              //color: Theme.of(context).primaryColor,
              color: MyTheme.lightPrimary,
              thickness: 2,
            ),

            ///list view of asmaa el hadeth.
            Expanded(
              child: hadethList.isEmpty?
                    Center(
                     child: CircularProgressIndicator(
                       color: MyTheme.lightPrimary,
                     ),
                   )
                  :
              ListView.separated(
                separatorBuilder: (context, index)
                {
                  return Divider(
                    //color: Theme.of(context).primaryColor,
                    color: MyTheme.lightPrimary,
                    thickness: 2,
                  );
                },
                itemBuilder: (context , index)
                {
                  return ItemHadethNameWidget(hadeth: hadethList[index]);
                  // ///because this need a nullable string.
                  // return Text(
                  //     '${hadethList[index].title}'
                  // );
                },
                itemCount:hadethList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadHadethFile() async {
    ///file content carry all hadeth (all content of hadeth file = 50 hadeth).
     String fileContent = await rootBundle.loadString('assets/files/hadeth.txt');
     /// \r for delete space of # and the allHadethList carry all 50 hadeth isolated.
     List<String> allHadethList = fileContent.split('#\r\n');
     ///flags...................................................
     //print(fileContent);
     //print(allHadethList);
     // for(int i=0 ; i< allHadethList.length ; i++)
     //   {
     //     print (allHadethList[i]);
     //     print ('========================================');
     //   }
     ///the next step is: hold 50 hadeth one by one and extract list of string contain single hadeth.
    for(int i=0 ; i< allHadethList.length ; i++ )
    {
     List<String>singleHadeth = allHadethList[i].split('\n');    //single hadeth
      ///the next step is: hold 50 hadeth one by one and extract title and content of every index
      String title = singleHadeth[0];
      ///update the value of singleHadeth.
      singleHadeth.removeAt(0); ///content only
      ///flag
      //print(singleHadeth);
       HadethHomeBodyArgs hadethHomeBodyArgs = HadethHomeBodyArgs(title: title , content: singleHadeth);
       ///this obj (hadethHomeBodyArgs) carry title and content.
       hadethList.add(hadethHomeBodyArgs);
    }
    setState(() {

    });
  }
}

///data class that contain hadeth data (title , content)
class HadethHomeBodyArgs{
  String title;
  List<String> content;
  HadethHomeBodyArgs({required this.title , required this.content});
}