import 'package:flutter/material.dart';
import 'package:survive_and_play_2/classes/Styles.dart';

class YouAreDead extends StatelessWidget {
  const YouAreDead({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Text(
          'You are dead',
          style: TextStyle(color: Colors.red),
          textAlign: TextAlign.center,
        )),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text('Начать заново'))
      ],
    );
  }
}
