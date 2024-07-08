import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/color_model.dart';

// ignore: must_be_immutable
class ColorItem extends StatelessWidget {
  ColorItem({required this.color});
  ColorModel color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 85, 0, 141),
      height: 80,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              color.imgUrl,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                color.jpName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                color.enName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(
                AssetSource(
                  (color.path),
                ),
              );
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
