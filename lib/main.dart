import 'package:flutter/material.dart';
import 'package:toku/screen/home_page.dart';
import 'package:toku/screen/Numbers_page.dart';
import 'package:toku/compensation/category_item.dart';

void main() {
  runApp(tokuAPP());
}

class tokuAPP extends StatelessWidget {
  const tokuAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// This trailing comma makes auto-formatting nicer for build methods.
