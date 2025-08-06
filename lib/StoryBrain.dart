import 'classes/Story.dart';

class StoryBrain
{
  int _currentIndex = 0;

  final List<Story> _storyData = [
    // Story(
    //   storyText: 'Вы находитесь в общежитии: после душа зайдя в комнату вы '
    //       'увидели что на вашего друга напал зомби:', choices: ['Убить '
    //     'зомби','Убежать', 'Поговорить с зомби', 'Обездвижить зомби'],
    //     destinations: [1, 2, 3, 4]
    // ),
    Story(
      storyText: 'You wake up in a dark forest. You hear rustling nearby.',
      choices: ['Investigate', 'Climb a tree', 'Call out', 'Run'],
      destinations: [1, 2, 3, 4],
    ),
    Story(
      storyText: 'You find a friendly fox. It stares at you curiously.',
      choices: ['Pet it', 'Follow it', 'Ignore it', 'Scare it away'],
      destinations: [4, 2, 3, 4],
    ),
    Story(
      storyText: 'You climb the tree and spot a village far away.',
      choices: ['Climb down', 'Jump across branches', 'Shout for help', 'Stay hidden'],
      destinations: [3, 4, 1, 4],
    ),
    Story(
      storyText: 'A voice answers your call. It’s a lost traveler like you.',
      choices: ['Join forces', 'Distrust them', 'Ask for food', 'Leave them'],
      destinations: [4, 4, 4, 4],
    ),
    Story(
      storyText: 'The story ends here for now. Restart?',
      choices: ['Yes', 'Yes', 'Yes', 'Yes'],
      destinations: [0, 0, 0, 0],
    ),

  ];
  Story get currentStory => _storyData[_currentIndex];
  List<String> get currentChoices => currentStory.choices;

  void nextStory(int choiceIndex){
    _currentIndex = currentStory.destinations[choiceIndex];
  }

  bool isEnd() {
    return _currentIndex >= _storyData.length;
  }

  void restart() {
    _currentIndex = 0;
  }
}