import 'package:flutter/material.dart';
import 'package:survive_and_play_2/classes/Character.dart';
import '../character_data.dart';
import 'package:survive_and_play_2/classes/GameState.dart';
import 'package:survive_and_play_2/Screens/StoryScreen.dart';

class CharacterSelectionScreen extends StatelessWidget {
  const CharacterSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Выбери цвет который нравится'),
          centerTitle: true,
        ),
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/backgrounds/empty_background.png'), fit: BoxFit.cover)),
            child: GridView.builder(
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
                    backgroundColor: returnColor(index)
                  ),
                  onPressed: () {
                    GameState.selected_character = characters[index];
                    Navigator.pushNamed(context, '/your_character');
                  }, child: null,
                );
              },
            ),
          ),
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
      ),
    );
  }

  Color returnColor(int index){
    switch(index)
    {
      case 0:
        return Colors.red;
      case 1:
        return Colors.green;
      case 2:
        return Colors.blue;
      case 3:
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

}
