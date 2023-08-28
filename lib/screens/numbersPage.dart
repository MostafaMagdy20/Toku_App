// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/numberComponent.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final List<Widget> numbers = [
        const NumberComponent(
          imagePath: 'assets/images/numbers/number_one.png', 
          jpNum: 'ichi', 
          enNum: 'One', 
          num: '1',
          sound: 'sounds/numbers/number_one_sound.mp3',
          ),
        
        const NumberComponent(
          imagePath: 'assets/images/numbers/number_two.png', 
          jpNum: 'ni', 
          enNum: 'Two', 
          num: '2',
          sound: 'sounds/numbers/number_two_sound.mp3',
          ),

        const NumberComponent(
          imagePath: 'assets/images/numbers/number_three.png', 
          jpNum: 'san', 
          enNum: 'Three', 
          num: '3',
          sound: 'sounds/numbers/number_three_sound.mp3',
          ),

        const NumberComponent(
          imagePath: 'assets/images/numbers/number_four.png', 
          jpNum: 'Shi', 
          enNum: 'Four', 
          num: '4',
          sound: 'sounds/numbers/number_four_sound.mp3',
          ),  
        const NumberComponent(
          imagePath: 'assets/images/numbers/number_five.png', 
          jpNum: 'go', 
          enNum: 'Five', 
          num: '5',
          sound: 'sounds/numbers/number_five_sound.mp3',
          ),
        const NumberComponent(
          imagePath: 'assets/images/numbers/number_six.png', 
          jpNum: 'roku', 
          enNum: 'Six', 
          num: '6',
          sound: 'sounds/numbers/number_six_sound.mp3',
          ),
        const NumberComponent(
          imagePath: 'assets/images/numbers/number_seven.png', 
          jpNum: 'Sebun', 
          enNum: 'Siven', 
          num: '7',
          sound: 'sounds/numbers/number_seven_sound.mp3',
          ),
        const NumberComponent(
          imagePath: 'assets/images/numbers/number_eight.png', 
          jpNum: 'hachi', 
          enNum: 'Eight', 
          num: '8',
          sound: 'sounds/numbers/number_eight_sound.mp3',
          ),
        const NumberComponent(
          imagePath: 'assets/images/numbers/number_nine.png', 
          jpNum: 'kyū', 
          enNum: 'Nine', 
          num: '9',
          sound: 'sounds/numbers/number_nine_sound.mp3',
          ),
        const NumberComponent(
          imagePath: 'assets/images/numbers/number_ten.png', 
          jpNum: 'jū', 
          enNum: 'Ten', 
          num: '10',
          sound: 'sounds/numbers/number_ten_sound.mp3',
          ),     
        
       ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black,
       title: const Text(
          'Numbers',
          style: TextStyle(
            fontSize: 23
          ),
        ),
      ),
     body: ListView.builder(
      itemCount: numbers.length,
      itemBuilder: (context, index) => numbers[index],
     ),
    );
  }
}










