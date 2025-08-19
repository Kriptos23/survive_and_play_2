import 'package:flutter/material.dart';
import 'package:survive_and_play_2/Screens/character_selection_screen.dart';
import 'package:survive_and_play_2/Screens/initialScreen.dart';
import 'package:survive_and_play_2/Screens/your_character_characteristics_screen.dart';
import 'package:survive_and_play_2/Screens/your_character_screen.dart';
import 'package:survive_and_play_2/Screens/your_dead_screen.dart';
import 'StoryScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ВЫЖИВИ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Initialscreen(),
        '/character_selection': (context) => const CharacterSelectionScreen(),
        '/your_character': (context) => const yourCharacterScreen(),
        '/character_characteristics': (context) => yourCharacterCharacteristicsScreen(),
        '/story': (context) => const StoryScreen(),
        '/dead': (context) => const YouAreDead(),
      },
    );
  }
}

