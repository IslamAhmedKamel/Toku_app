import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/number_model.dart';

// ignore: must_be_immutable
class NumberItem extends StatelessWidget {
  NumberItem({super.key, required this.number});
  NumberModel number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 80,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              number.imgUrl,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpNum,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                number.enNum,
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
            onPressed: ()  {
              final player = AudioPlayer();
               player.play(
                AssetSource(
                  (number.path),
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
            width: 6,
          ),
        ],
      ),
    );
  }
}
