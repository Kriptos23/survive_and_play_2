import 'character.dart';

List<Character> characters = [
  Character(
    name: 'Aria the Brave',
    imagePath: 'assets/aria.png',
    customDestinations: {
      0: [1, 2, 3, 5],
      3: [4, 4, 4, 6],
    },
  ),
  Character(
    name: 'Zane the Trickster',
    imagePath: 'assets/zane.png',
    customDestinations: {
      0: [2, 3, 1, 4],
      1: [2, 2, 2, 7],
    },
  ),
  // Add 2 more if you want
];
