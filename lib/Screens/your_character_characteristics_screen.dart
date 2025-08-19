import 'package:flutter/material.dart';
import 'package:survive_and_play_2/classes/GameState.dart';
import 'package:survive_and_play_2/classes/Styles.dart';

class yourCharacterCharacteristicsScreen extends StatelessWidget {
  const yourCharacterCharacteristicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Scaffold(
          body: SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/backgrounds/empty_background.png'), fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Container(child: Image.asset(GameState.selected_character.weaponImagePath)),
                Container(child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),   // semi-transparent bg
                    borderRadius: BorderRadius.circular(12), // rounded rectangle
                    border: Border.all(color: Colors.white, width: 2), // optional border
                  ),
                  child: Column(children: [...GameState.selected_character.weaponDescription.map((text){return Text(text,
                    style: Styles.storyText,
                  );}).toList(),],),
                )),
                ElevatedButton(onPressed: ()
                {
                  Navigator.pushNamed(context, '/story');
                },
                // style: Styles.buttonStyle,
                  child: Text('Я готов!'),)],),
            ),
          ),
        ),
      ),
    );
  }
}
