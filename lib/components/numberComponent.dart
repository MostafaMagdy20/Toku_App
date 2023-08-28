// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class NumberComponent extends StatelessWidget {
  final String imagePath;
  final String jpNum;
  final String enNum;
  final String num;
  final String sound;

  const NumberComponent({super.key, 
    required this.imagePath,
    required this.jpNum,
    required this.enNum,
    required this.num,
    required this.sound
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black,
        height: 100,
        child: Row(
          children: [
            Container(
              color: Colors.white,
              child: Image.asset(
                imagePath,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  jpNum,
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(enNum,
                    style: const TextStyle(fontSize: 25, color: Colors.white)),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              num,
              style: const TextStyle(color: Colors.white, fontSize: 40),
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
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
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
