import 'package:flutter/material.dart';
import 'package:survive_and_play_2/classes/Styles.dart';

class Initialscreen extends StatelessWidget {
  const Initialscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/backgrounds/non_empty_background.png'), fit: BoxFit.cover)),
            child: Column(children: [
              Text('ПОПРОБУЙ ВЫЖИТЬ В ЗОМБИ АПОКАЛИПСИС',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellowAccent,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black,
                        offset: Offset(2, 2),
                      ),
                    ],
                  )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                margin: const EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7), // semi-transparent bg
                  borderRadius: BorderRadius.circular(12), // rounded rectangle
                  border: Border.all(color: Colors.white, width: 2), // optional border
                ),
                child: Column(
                  children: [
                    Text(
                        'Твой '
                        'выбор '
                        'влияет на'
                        ' сюжет',
                        style: Styles.storyText),
                    Text(
                        'Тебе '
                        'выпадет уникальный персонаж со своим оружием',
                        textAlign: TextAlign.center,
                        style: Styles.storyText),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/character_selection');
                  },
                  child: Text('OK'))
            ]),
          ),
        )),
      ),
    );
  }
}
/*
ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, '/character_selection');
  },
  style: ElevatedButton.styleFrom(
    minimumSize: Size(200, 60),
    backgroundColor: Colors.greenAccent.shade700,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  ),
  child: Text('OK'),
),
*/
