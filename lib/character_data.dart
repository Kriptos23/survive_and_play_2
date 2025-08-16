import 'package:survive_and_play_2/classes/Character.dart';

List<Character> characters = [
  Character(
    name: 'Борец',
    imagePath: 'assets/img/character1.jpeg',
    characteristics: ['Сильный','Имеется харизма'],
    weaponImagePath: 'assets/weapons/weapon1.png',
    weaponDescription: ['Хорош в узких местах','Шумный','Медленный'],
    customDestinations: {
      0: [1, 2, 3, 4],
      17: [18, 19, 20, 21],
      34: [35, 36, 37, 38],
      51: [52, 53, 54, 55],
      68: [69, 70, 71, 72],
    },
  ),
  Character(
    name: 'Баскетболист',
    imagePath: 'assets/img/character2.jpeg',
    characteristics: ['Ловкий','Имеется реакция'],
    weaponImagePath: 'assets/weapons/weapon2.png',
    weaponDescription: ['Нормальный везде и во всем','Шума мало',],
    customDestinations: {
      0: [5, 6, 7, 8],
      17: [22, 23, 24, 25],
      34:[39, 40, 41, 42],
      51: [56, 57, 58, 59],
      68: [73, 74, 75, 76],
  },
  ),
  Character(
    name: 'Программист',
    imagePath: 'assets/img/character3.jpeg',
    characteristics: ['Умный','Имеется логическое мышление'],
    weaponImagePath: 'assets/weapons/weapon3.png',
    weaponDescription: ['Нужно безопасное место','Подключение к камерам','Шанс связаться с выжившими'],
    customDestinations: {
      0: [9, 10, 11, 12],
      17: [26, 27 , 28, 29 ],
      34: [43, 44, 45, 46],
      51: [60, 61, 62, 63],
      68: [77, 78, 79, 80],
    },
  ),
  Character(
    name: 'Псих',
    imagePath: 'assets/img/character4.jpeg',
    characteristics: ['Сильный и ловкий','Имеется реакция','Красивая внешность'],
    weaponImagePath: 'assets/weapons/weapon4.png',
    weaponDescription: ['Хорош в открытой местности','Бесшумный','Быстрый'],
    customDestinations: {
      0: [13, 14, 15, 16],
      17: [30, 31, 32, 33],
      34: [47, 48, 49, 50],
      51: [64, 65, 66, 67,],
      68: [81, 82, 83, 84],
    },
  ),
  // Add 2 more if you want
];
