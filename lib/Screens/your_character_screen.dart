import 'package:flutter/material.dart';
import 'package:survive_and_play_2/classes/GameState.dart';
import '../character_data.dart';
import 'package:survive_and_play_2/Screens/character_selection_screen.dart';


class yourCharacterScreen extends StatelessWidget {
  const yourCharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/backgrounds/empty_background.png'), fit: BoxFit.fill)),
            child: Column(children: [Container(child: Image.asset(GameState.selected_character.imagePath)), Text('Your character!'),
              ...GameState.selected_character.characteristics.map((text){return Text(text);}).toList(),
              ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/character_characteristics');
              }, child: Text('Да, это я'))
            ],),
          ),
        ),
      ),
    );
  }
}
