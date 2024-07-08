import 'package:flutter/material.dart';
import 'package:new_app/components/category_home_item.dart';
import 'package:new_app/screens/color_page.dart';
import 'package:new_app/screens/family_page.dart';
import 'package:new_app/screens/numbers_page.dart';
import 'package:new_app/screens/phrase_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          CategoryItemHome(
            onTaps: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NumbersPage(),
                ),
              );
          
          
          
            },
            color: Color.fromARGB(244, 250, 133, 0),
            text: 'Numbers',
          ),
          CategoryItemHome(
            onTaps: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FamilyPage(),
                ),
              );
            },
            color: Color.fromARGB(244, 50, 250, 0),
            text: 'FamilyMembers',
          ),
          CategoryItemHome(
            onTaps: () {
           Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColorPage(),
                ),
              );
          
          
         
         
            },
            color: Color.fromARGB(244, 250, 0, 250),
            text: 'Colors',
          ),
          CategoryItemHome(
            onTaps: () {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhrasePage(),
                ),
              );
          
              

            },
            color: Color.fromARGB(244, 0, 100, 250),
            text: 'phrases',
          ),
        ],
      ),
    );
  }
}
