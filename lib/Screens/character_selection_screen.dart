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
        title: const Text('Choose Your Character'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: characters.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final character = characters[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(character.imagePath),
              ),
              title: Text(character.name),
              onTap: () {
                GameState.selected_character = character as Character;
                Navigator.pushNamed(context, '/story');
              },
            ),
          );
        },
      ),
    );
  }
}
