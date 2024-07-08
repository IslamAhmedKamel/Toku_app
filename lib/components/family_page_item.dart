import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/family_model.dart';

// ignore: must_be_immutable
class FamilyItem extends StatelessWidget {
  FamilyItem({required this.family});
  FamilyModel family;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 70,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              family.imgUrl,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                family.jpName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                family.enName,
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
                  (family.path),
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
