import 'package:flutter/material.dart';
import 'package:new_app/components/number_page_item.dart';
import 'package:new_app/models/number_model.dart';

// ignore: must_be_immutable
class NumbersPage extends StatelessWidget {
  List<NumberModel> nums = [
    NumberModel(
        path: 'sounds/numbers/number_one_sound.mp3',
        enNum: 'One',
        imgUrl: 'assets/images/numbers/number_one.png',
        jpNum: 'Ichi'),
    NumberModel(
        path: 'sounds/numbers/number_two_sound.mp3',
        enNum: 'Two',
        imgUrl: 'assets/images/numbers/number_two.png',
        jpNum: 'rs'),
    NumberModel(
        path: 'sounds/numbers/number_three_sound.mp3',
        enNum: 'Three',
        imgUrl: 'assets/images/numbers/number_three.png',
        jpNum: 'jpNum'),
    NumberModel(
        path: 'sounds/numbers/number_four_sound.mp3',
        enNum: 'Four',
        imgUrl: 'assets/images/numbers/number_four.png',
        jpNum: 'jpNum'),
    NumberModel(
        path: 'sounds/numbers/number_five_sound.mp3',
        enNum: 'Five',
        imgUrl: 'assets/images/numbers/number_five.png',
        jpNum: 'jpNum'),
    NumberModel(
        path: 'sounds/numbers/number_six_sound.mp3',
        enNum: 'Six',
        imgUrl: 'assets/images/numbers/number_six.png',
        jpNum: 'jpNum'),
    NumberModel(
        path: 'sounds/numbers/number_seven_sound.mp3',
        enNum: 'Seven',
        imgUrl: 'assets/images/numbers/number_seven.png',
        jpNum: 'jpNum'),
    NumberModel(
        path: 'sounds/numbers/number_eight_sound.mp3',
        enNum: 'Eight',
        imgUrl: 'assets/images/numbers/number_eight.png',
        jpNum: 'jpNum'),
    NumberModel(
        path: 'sounds/numbers/number_nine_sound.mp3',
        enNum: 'Nine',
        imgUrl: 'assets/images/numbers/number_nine.png',
        jpNum: 'jpNum'),
    NumberModel(
        path: 'sounds/numbers/number_ten_sound.mp3',
        enNum: 'Tin',
        imgUrl: 'assets/images/numbers/number_ten.png',
        jpNum: 'jpNum'),
  ];

  NumbersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => NumberItem(
          number: nums[index],
        ),
        itemCount: nums.length,
      ),
    );
  }
}
