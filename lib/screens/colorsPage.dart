// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/colorComponent.dart';
//import 'package:japanese_learning_app/components/familyComponent.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  final List<Widget> colors = [
          ColorComponent(
            image: 'assets/images/colors/color_red.png',
            color: Colors.red,
            jpColor: 'aka',
            enColor: 'Red',
            sound: 'sounds/colors/red.wav',
          ),
          ColorComponent(
            image: 'assets/images/colors/color_green.png',
            color: Colors.green,
            jpColor: 'midori',
            enColor: 'Green',
            sound: 'sounds/colors/green.wav',
          ),
          ColorComponent(
            image: 'assets/images/colors/yellow.png',
            color: Colors.yellow,
            jpColor: 'kiiro',
            enColor: 'Yellow',
            sound: 'sounds/colors/yellow.wav',
          ),
          ColorComponent(
            image: 'assets/images/colors/color_black.png',
            color: Colors.black,
            jpColor: 'Burakku',
            enColor: 'Black',
            sound: 'sounds/colors/black.wav',
          ),
          ColorComponent(
            image: 'assets/images/colors/color_white.png',
            color: Colors.white,
            imColor: Colors.black12,
            arrowColor: Colors.black,
            txtColor: Colors.black,
            jpColor: 'shiro',
            enColor: 'White',
            sound: 'sounds/colors/white.wav',
          ),
          ColorComponent(
            image: 'assets/images/colors/color_brown.png',
            color: Colors.brown,
            jpColor: 'chairo',
            enColor: 'Brown',
            sound: 'sounds/colors/brown.wav',
          ),
          ColorComponent(
            image: 'assets/images/colors/color_dusty_yellow.png',
            color: const Color(0xffCAAF7E),
            jpColor: 'kin',
            enColor: 'Cafe',
            sound: 'sounds/colors/dustyyellow.wav',
          ),
          ColorComponent(
            image: 'assets/images/colors/color_gray.png',
            color: Colors.grey,
            jpColor: 'Gurē',
            enColor: 'Grey',
            sound: 'sounds/colors/gray.wav',
          ),

        ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Colors',
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) => colors[index],
      ),
    );
  }
}
