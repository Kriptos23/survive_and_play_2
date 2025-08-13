import 'package:survive_and_play_2/classes/Character.dart';

List<Character> characters = [
  Character(
    name: 'Борец',
    imagePath: 'assets/character1.jpeg',
    customDestinations: {
      0: [1, 2, 3, 4],
      17: [18, 19, 20, 21],
    },
  ),
  Character(
    name: 'Баскетболист',
    imagePath: 'assets/character2.jpeg',
    customDestinations: {
      0: [5, 6, 7, 8],
      17: [4, 4, 4, 6],
    },
  ),
  Character(
    name: 'Программист',
    imagePath: 'assets/character3.jpeg',
    customDestinations: {
      0: [9, 10, 11, 12],
      17: [26, 27 , 28, 29 ],
    },
  ),
  Character(
    name: 'Псих',
    imagePath: 'assets/character4.jpeg',
    customDestinations: {
      0: [13, 14, 15, 16],
      17: [4, 4, 4, 6],
    },
  ),
  // Add 2 more if you want
];
