import 'package:flutter/material.dart';
import 'package:new_app/components/color_page_item.dart';
import 'package:new_app/models/color_model.dart';

// ignore: must_be_immutable
class ColorPage extends StatelessWidget {
  ColorPage({super.key});
  List<ColorModel> colr = [
    const ColorModel(
      enName: 'Black',
      jpName: 'Chichioya',
      imgUrl: 'assets/images/colors/color_black.png',
      path: 'sounds/colors/black.wav',
    ),
    const ColorModel(
      enName: 'Brown',
      jpName: 'asxsw',
      imgUrl: 'assets/images/colors/color_brown.png',
      path: 'sounds/colors/brown.wav',
    ),
    const ColorModel(
      enName: 'dusty yellow',
      jpName: 'asdcaw',
      imgUrl: 'assets/images/colors/color_dusty_yellow.png',
      path: 'sounds/colors/dusty yellow.wav',
    ),
    const ColorModel(
      enName: 'gray',
      jpName: 'dasccds',
      imgUrl: 'assets/images/colors/color_gray.png',
      path: 'sounds/colors/gray.wav',
    ),
    const ColorModel(
      enName: 'green',
      jpName: 'dbads',
      imgUrl: 'assets/images/colors/color_green.png',
      path: 'sounds/colors/green.wav',
    ),
    const ColorModel(
      enName: 'red',
      jpName: 'hdcba',
      imgUrl: 'assets/images/colors/color_red.png',
      path: 'sounds/colors/red.wav',
    ),
    const ColorModel(
      enName: 'white',
      jpName: 'asdub',
      imgUrl: 'assets/images/colors/color_white.png',
      path: 'sounds/colors/white.wav',
    ),
    const ColorModel(
      enName: 'yellow',
      jpName: 'vsca',
      imgUrl: 'assets/images/colors/yellow.png',
      path: 'sounds/colors/yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ColorItem(
          color: colr[index],
        ),
        itemCount: colr.length,
      ),
    );
  }
}
