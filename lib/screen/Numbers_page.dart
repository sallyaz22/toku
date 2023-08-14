import 'package:flutter/material.dart';
import 'package:toku/compensation/category_item.dart';
import 'package:toku/compensation/item.dart';
import 'package:toku/models/numbers.dart';
import 'package:toku/screen/home_page.dart';

class Numbers extends StatelessWidget {
  const Numbers({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
      enName: 'One',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
    ),
    Number(
      enName: 'Two',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
    ),
    Number(
      enName: 'Three',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
    ),
    Number(
      enName: 'Four',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
    ),
    Number(
      enName: 'Five',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
    ),
    Number(
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
    ),
    Number(
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'sebun',
    ),
    Number(
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hach',
    ),
    Number(
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kuy',
    ),
    Number(
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'ji',
    ),
    Number(
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'ji',
    ),
    Number(
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'ji',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Color(0xff463228),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Item(number: numbers[index]);
          }),
    );
  }
}

List<Widget> getList(List<Number> numbers) {
  List<Item> itemList = [];
  for (int i = 0; i < numbers.length; i++) {
    itemList.add(Item(number: numbers[i]));
  }
  return itemList;
}
