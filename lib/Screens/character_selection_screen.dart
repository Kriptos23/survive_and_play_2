import 'package:flutter/material.dart';
import 'package:survive_and_play_2/classes/Character.dart';
import '../character_data.dart';
import 'package:survive_and_play_2/classes/GameState.dart';
import 'package:survive_and_play_2/Screens/StoryScreen.dart';

class CharacterSelectionScreen extends StatelessWidget {
  const CharacterSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Выбери цвет который нравится'),
        centerTitle: true,
      ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // two per row
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2, // wider buttons
        ),
        itemCount: characters.length,
        itemBuilder: (context, index) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(250, 100), // big wide rectangle
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // sharp corners
              ),
              backgroundColor: Colors.red
            ),
            onPressed: () {
              GameState.selected_character = characters[index];
              Navigator.pushNamed(context, '/your_character');
            }, child: null,
          );
        },
      ),


      // ListView.builder(
      //   itemCount: characters.length,
      //   padding: const EdgeInsets.all(16),
      //   itemBuilder: (context, index) {
      //     final character = characters[index];
      //     // return Card(
      //     //   margin: const EdgeInsets.symmetric(vertical: 10),
      //     //   child: ListTile(
      //     //     leading: CircleAvatar(
      //     //       backgroundImage: AssetImage(character.imagePath),
      //     //     ),
      //     //     title: Text(character.name),
      //     //
      //     //     onTap: () {
      //     //       GameState.selected_character = character as Character;
      //     //       Navigator.pushNamed(context, '/story');
      //     //     },
      //     //   ),
      //     // );
      //   },
      // ),
    );
  }
}
