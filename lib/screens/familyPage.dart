// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/familyComponent.dart';
//import 'package:japanese_learning_app/components/numberComponent.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({super.key});

  final List<Widget> members = [
          const FamilyComponent(
            image: 'assets/images/family_members/family_father.png', 
            jpName: 'Chichioya', 
            enName: 'Father',
            sound: 'sounds/family_members/father.wav',
            ),

          const FamilyComponent(
            image: 'assets/images/family_members/family_mother.png', 
            jpName: 'Hahaoya', 
            enName: 'Mother',
            sound: 'sounds/family_members/mother.wav',
            ),
          
          const FamilyComponent(
            image: 'assets/images/family_members/family_younger_brother.png', 
            jpName: 'Otōto', 
            enName: 'Brother',
            sound: 'sounds/family_members/bro.wav',
            ),  

          const FamilyComponent(
            image: 'assets/images/family_members/family_younger_sister.png', 
            jpName: 'Imōto', 
            enName: 'Sister',
            sound: 'sounds/family_members/sis.wav',
            ), 

          const FamilyComponent(
            image: 'assets/images/family_members/family_grandfather.png', 
            jpName: 'Ojīsan', 
            enName: 'Grandfather',
            sound: 'sounds/family_members/grand_father.wav',
            ),

          const FamilyComponent(
            image: 'assets/images/family_members/family_grandmother.png', 
            jpName: 'Sobo', 
            enName: 'Grandmother',
            sound: 'sounds/family_members/grand_mother.wav',
            ), 

          const FamilyComponent(
            image: 'assets/images/family_members/family_son.png', 
            jpName: 'Musuko', 
            enName: 'Son',
            sound: 'sounds/family_members/son.wav',
            ),  

          const FamilyComponent(
            image: 'assets/images/family_members/family_daughter.png', 
            jpName: 'Musume', 
            enName: 'Daughter',
            sound: 'sounds/family_members/daughter.wav',
            ),        
        ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Family Members',
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) => members[index],
       ),
    );
  }
}
