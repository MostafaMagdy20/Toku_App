// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/phrasesComponent.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  final List<Widget> phrases = [
          const PhrasesComponent(
            enPhrase: 'Are you coming?',
            jpPhrase: 'Kimasu ka',
            sound: 'sounds/phrases/are_you_coming.wav',
            ),

          const PhrasesComponent(
            enPhrase: 'Dont forget to subscribe',
            jpPhrase: 'Kōdoku suru koto o wasurenaide kudasai',
            sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
            ),

          const PhrasesComponent(
            enPhrase: 'How are you?',
            jpPhrase: 'Genkidesu ka?',
            sound: 'sounds/phrases/how_are_you_feeling.wav',
            ),    
          
          const PhrasesComponent(
            enPhrase: 'I love anime',
            jpPhrase: 'Watashi wa anime ga daisukidesu',
            sound: 'sounds/phrases/i_love_anime.wav',
            ),

          const PhrasesComponent(
            enPhrase: 'I Love Programming',
            jpPhrase: 'Watashi wa puroguramingu ga daisukidesu',
            sound: 'sounds/phrases/i_love_programming.wav',
            ),

          const PhrasesComponent(
            enPhrase: 'Programming is easy',
            jpPhrase: 'Puroguramingu wa kantandesu',
            sound: 'sounds/phrases/programming_is_easy.wav',
            ),

          const PhrasesComponent(
            enPhrase: 'What is your name?',
            jpPhrase: 'namae wa nanidesu ka?',
            sound: 'sounds/phrases/what_is_your_name.wav',
            ),

          const PhrasesComponent(
            enPhrase: 'Where are you going?',
            jpPhrase: 'Doko ni iku no?',
            sound: 'sounds/phrases/where_are_you_going.wav',
            ),

          const PhrasesComponent(
            enPhrase: 'Yes iam coming',
            jpPhrase: 'Hai, ikimasu',
            sound: 'sounds/phrases/yes_im_coming.wav',
            ),

        ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Phrases',
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) => phrases[index],

      ),
    );
  }
}
