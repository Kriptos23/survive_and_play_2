import "package:flutter/material.dart";
import 'package:survive_and_play_2/classes/Story.dart';
import 'package:survive_and_play_2/classes/Styles.dart';
import '../StoryBrain.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final StoryBrain storyBrain = StoryBrain();

  void onChoiceSelected(int choiceIndex) {
    setState(() {
      storyBrain.nextStory(choiceIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/backgrounds/non_empty_background.png'), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Story Text
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),   // semi-transparent bg
                        borderRadius: BorderRadius.circular(12), // rounded rectangle
                        border: Border.all(color: Colors.white, width: 2), // optional border
                      ),
                      child: Text(
                        storyBrain.currentStory.storyText,
                        style: TextStyle(
                          fontSize: 24,
                          color: _getTextColor(storyBrain.currentStory.outcome as OutcomeType),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Choices
                _buildChoices(storyBrain.currentStory as Story),

                const SizedBox(height: 20),
                Text(lives_count_method() as String, style: Styles.storyText,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String lives_count_method(){
    if(StoryBrain.lives_count==1) {
      return 'Your LAST live';
    }
    else{
      int count = StoryBrain.lives_count;
      return '${count.toString()} Lives left';
    }

  }

  Color _getTextColor(OutcomeType outcome) {
    if (outcome == null) {
      return Colors.white; // no outcome
    }

    switch (outcome) {
      case OutcomeType.storyWhite:
        return Colors.white;
      case OutcomeType.success:
        return Colors.green;
      case OutcomeType.failure:
        return Colors.red;
      case OutcomeType.neutral:
        return Colors.yellow;
    }
  }

  Widget _buildChoices(Story currentStory) {
    final choices = currentStory.choices;

    // Case: only one choice
    if (choices.length == 1) {
      return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(250, 100), // big wide rectangle
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // sharp corners
            ),
          ),
          onPressed: () {
            storyBrain.nextStory(0);
            if(StoryBrain.lives_count<=0){
              Navigator.pushNamed(context, '/dead');
              StoryBrain.resetLives();
            }
            setState(() {
            });
          },
          child: Text(
            choices[0],
            style: const TextStyle(fontSize: 20),
          ),
        ),
      );
    }

    // Case: multiple choices in 2x2 layout
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // two per row
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2, // wider buttons
      ),
      itemCount: choices.length,
      itemBuilder: (context, index) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(250, 100), // big wide rectangle
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // sharp corners
            ),
          ),
          onPressed: () {
            storyBrain.nextStory(index);
            setState(() {});
          },
          child: Text(
            choices[index],
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
