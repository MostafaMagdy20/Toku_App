// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColorComponent extends StatelessWidget {
  final Color color;
  final String image;
  final String jpColor;
  final String enColor;
  Color? arrowColor;
  Color? imColor;
  Color? txtColor;
  final String sound;

  ColorComponent(
      {super.key, 
      required this.color,
      required this.image,
      required this.jpColor,
      required this.enColor,
      this.arrowColor = Colors.white,
      this.imColor = Colors.white,
      this.txtColor = Colors.white,
      required this.sound
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: color,
        height: 100,
        child: Row(
          children: [
            Container(
              color: imColor,
              child: Image.asset(
                image,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  jpColor,
                  style: TextStyle(fontSize: 25, color: txtColor),
                ),
                Text(
                  enColor,
                  style: TextStyle(fontSize: 22, color: txtColor),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            const Spacer(
              flex: 1,
            ),
           Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(sound));
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: arrowColor,
                  size: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
