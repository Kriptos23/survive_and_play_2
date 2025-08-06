import "package:flutter/material.dart";
import '../StoryBrain.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final StoryBrain storyBrain = StoryBrain();

  void onChoiceSelected(int choiceIndex){
    setState(() {
      storyBrain.nextStory(choiceIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Story Text
              Expanded(
                flex: 3,
                child: Center(
                  child: Text(
                    storyBrain.currentStory.storyText,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Choices
              for (int i = 0; i < storyBrain.currentChoices.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: ElevatedButton(
                    onPressed: () => onChoiceSelected(i),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple[300],
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text(
                      storyBrain.currentChoices[i],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
