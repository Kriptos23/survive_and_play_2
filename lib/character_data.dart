import 'package:survive_and_play_2/classes/Character.dart';

List<Character> characters = [
  Character(
    name: 'Aria the Brave',
    imagePath: 'assets/character1.jpeg',
    customDestinations: {
      0: [1, 2, 3, 5],
      3: [4, 4, 4, 6],
    },
  ),
  Character(
    name: 'Zane the Trickster',
    imagePath: 'assets/character2.jpeg',
    customDestinations: {
      0: [2, 3, 1, 4],
      1: [2, 2, 2, 7],
    },
  ),
  Character(
    name: 'Luna the Silent',
    imagePath: 'assets/character3.jpeg',
    customDestinations: {},
  ),
  Character(
    name: 'Drex the Wise',
    imagePath: 'assets/character4.jpeg',
    customDestinations: {
      1: [3, 3, 3, 2],
    },
  ),
  // Add 2 more if you want
];
