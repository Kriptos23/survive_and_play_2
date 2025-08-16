import 'package:flutter/material.dart';

class Styles {
  // Main story text
  static const TextStyle storyText = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.normal,
    height: 1.4, // line spacing
  );

  // Outcome text (success/failure)




  // Buttons
  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(200, 60),
    backgroundColor: Colors.greenAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}
