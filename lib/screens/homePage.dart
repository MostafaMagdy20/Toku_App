// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/categoryContainer.dart';
import 'package:japanese_learning_app/screens/colorsPage.dart';
import 'package:japanese_learning_app/screens/familyPage.dart';
import 'package:japanese_learning_app/screens/numbersPage.dart';
import 'package:japanese_learning_app/screens/phrasesPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Toku',
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Column(
          children: [
            Category(
              text: 'Numbers',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NumbersPage(),
                  ),
                );
              },
            ),
            Category(
              text: 'Family Members',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FamilyPage(),
                  ),
                );
              },
            ),
            Category(
              text: 'Colors',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ColorsPage(),
                  ),
                );
              },
              ),
            Category(
              text: 'Phrases',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhrasesPage(),
                  ),
                );
              },
            )
          ],
        ),
      );
  }
}
