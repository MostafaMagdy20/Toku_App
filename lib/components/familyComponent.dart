// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class FamilyComponent extends StatelessWidget {
  final String image;
  final String jpName;
  final String enName;
  final String sound;

  const FamilyComponent({super.key, 
    required this.image,
    required this.jpName,
    required this.enName,
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
                image,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  jpName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  enName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
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
