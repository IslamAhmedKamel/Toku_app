import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryItemHome extends StatelessWidget {
  CategoryItemHome({this.color, this.text, this.onTaps});
  String? text;
  Color? color;
  Function()? onTaps;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaps,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        height: 70,
        alignment: Alignment.centerLeft,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
