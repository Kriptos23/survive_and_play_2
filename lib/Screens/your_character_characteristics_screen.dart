import 'package:flutter/material.dart';
import 'package:survive_and_play_2/classes/GameState.dart';

class yourCharacterCharacteristicsScreen extends StatelessWidget {
  const yourCharacterCharacteristicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Container(child: Image.asset(GameState.selected_character.weaponImagePath)), ElevatedButton
        (onPressed: (){
        Navigator.pushNamed(context, '/story');
      }, child: null)],),
    );
  }
}
