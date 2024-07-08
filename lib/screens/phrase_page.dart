import 'package:flutter/material.dart';
import 'package:new_app/components/phrase_page_item.dart';
import 'package:new_app/models/phrase_model.dart';

// ignore: must_be_immutable
class PhrasePage extends StatelessWidget {
  List<PhraseModel> phras = [
    PhraseModel(
      enName: 'are you coming',
      jpName: '来ますか',
      path: 'sounds/phrases/are_you_coming.wav',
    ),
    PhraseModel(
      enName: 'dont forget to subscribe',
      jpName: '購読を忘れないでください',
      path: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PhraseModel(
      enName: 'how are you feeling',
      jpName: 'ご気分はいかがですか。',
      path: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PhraseModel(
      enName: 'how are you feeling',
      jpName: 'ご気分はいかがですか。',
      path: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PhraseModel(
      enName: 'i_love_programming',
      jpName: 'ご気分はいかがですか。',
      path: 'sounds/phrases/i_love_programming.wav',
    ),
    PhraseModel(
      enName: 'how are you feeling',
      jpName: 'ご気分はいかがですか。',
      path: 'sounds/phrases/programming_is_easy.wav',
    ),
    PhraseModel(
      enName: 'how are you feeling',
      jpName: 'ご気分はいかがですか。',
      path: 'sounds/phrases/what_is_your_name.wav',
    ),
    PhraseModel(
      enName: 'where are you going',
      jpName: 'どこに行くの',
      path: 'sounds/phrases/where_are_you_going.wav',
    ),
    PhraseModel(
      enName: 'yes im coming',
      jpName: 'はい、行きます',
      path: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  PhrasePage({super.key});
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
        itemBuilder: (context, index) => PhraseItem(
          phrase: phras[index],
        ),
        itemCount: phras.length,
      ),
    );
  }
}
