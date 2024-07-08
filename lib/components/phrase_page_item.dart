import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
 import 'package:new_app/models/phrase_model.dart';

// ignore: must_be_immutable
class PhraseItem extends StatelessWidget {
  PhraseItem({super.key, required this.phrase});
  PhraseModel phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 80,
      child: Row(
        children: [
         
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phrase.jpName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                phrase.enName,
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
                  (phrase.path),
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
