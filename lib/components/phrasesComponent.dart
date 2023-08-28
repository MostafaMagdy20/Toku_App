// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PhrasesComponent extends StatelessWidget {
  final String enPhrase;
  final String jpPhrase;
  final String sound;

  const PhrasesComponent({super.key, required this.enPhrase, required this.jpPhrase, required this.sound});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black,
        height: 80,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: SizedBox(
                width: 285,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "- $enPhrase",
                        maxLines: 4,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          //overflow: TextOverflow.ellipsis
                        ),
                      ),
                      Text(
                        "- $jpPhrase",
                        maxLines: 4,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          //overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
