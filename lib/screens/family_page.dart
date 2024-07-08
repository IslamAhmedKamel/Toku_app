import 'package:flutter/material.dart';
import 'package:new_app/components/family_page_item.dart';
import 'package:new_app/models/family_model.dart';

// ignore: must_be_immutable
class FamilyPage extends StatelessWidget {
  FamilyPage({super.key});
  List<FamilyModel> fams = [
    const FamilyModel(
      enName: 'Father',
      jpName: 'Chichioya',
      imgUrl: 'assets/images/family_members/family_father.png',
      path: 'sounds/family_members/father.wav',
    ),
    const FamilyModel(
      enName: 'Son',
      jpName: 'asxsw',
      imgUrl: 'assets/images/family_members/family_son.png',
      path: 'sounds/family_members/son.wav',
    ),
    const FamilyModel(
      enName: 'Daughter',
      jpName: 'asdcaw',
      imgUrl: 'assets/images/family_members/family_daughter.png',
      path: 'sounds/family_members/daughter.wav',
    ),
    const FamilyModel(
      enName: 'Grand Father',
      jpName: 'dasccds',
      imgUrl: 'assets/images/family_members/family_grandfather.png',
      path: 'sounds/family_members/grand father.wav',
    ),
    const FamilyModel(
      enName: 'Grand Mother',
      jpName: 'dbads',
      imgUrl: 'assets/images/family_members/family_grandmother.png',
      path: 'sounds/family_members/grand mother.wav',
     ),
    const FamilyModel(
      enName: 'Mother',
      jpName: 'hdcba',
      imgUrl: 'assets/images/family_members/family_mother.png',
      path: 'sounds/family_members/mother.wav',
    ),
    const FamilyModel(
      enName: 'Older Bother',
      jpName: 'asdub',
      imgUrl: 'assets/images/family_members/family_older_brother.png',
      path: 'sounds/family_members/older bother.wav',
    ),
    const FamilyModel(
      enName: 'Older Sister',
      jpName: 'vsca',
      imgUrl: 'assets/images/family_members/family_older_sister.png',
      path: 'sounds/family_members/older sister.wav',
    ),
    const FamilyModel(
      enName: 'Younger Brohter',
      jpName: 'yoaud',
      imgUrl: 'assets/images/family_members/family_younger_brother.png',
      path: 'sounds/family_members/younger brohter.wav',
    ),
    const FamilyModel(
      enName: 'Younger Sister',
      jpName: 'vgdvas',
      imgUrl: 'assets/images/family_members/family_younger_sister.png',
      path: 'sounds/family_members/younger sister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => FamilyItem(
          family: fams[index],
        ),
        itemCount: fams.length,
      ),
    );
  }
}
