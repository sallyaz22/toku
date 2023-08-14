import 'package:flutter/material.dart';
import 'package:toku/screen/Numbers_page.dart';
import 'package:toku/compensation/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff463228),
        title: Text('TOKU'),
      ),
      body: Column(children: [
        category(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return Numbers();
            }));
          },
          text: 'Number',
          color: Color(0xffEf9235),
        ),
        category(
          text: 'FamilyMembers',
          color: Color(0xff558B37),
        ),
        category(
          text: 'Colors',
          color: Color(0xff79359F),
        ),
        category(
          text: 'Pharess',
          color: Colors.blue,
        ),
      ]),
    );
  }
}

// class category extends StatelessWidget {
//   category({this.text, this.color});
//   String? text;
//   Color? color;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 16),
//       alignment: Alignment.centerLeft,
//       height: 65,
//       width: double.infinity,
//       color: color!,
//       child: Text(
//         text!,
//         style: TextStyle(color: Colors.white, fontSize: 20),
//       ),
//     );
//   }
// }
