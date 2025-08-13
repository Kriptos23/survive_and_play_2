import 'package:survive_and_play_2/classes/GameState.dart';

import 'classes/Story.dart';

class StoryBrain {
  int _currentIndex = 0;

  final List<Story> _storyData = [
    Story(//0
        storyText: 'Вы находитесь в общежитии: после душа зайдя в комнату вы '
            'увидели что на вашего друга напал зомби:',
        choices: ['Убить зомби', 'Убежать', 'Поговорить с зомби', 'Обездвижить зомби'],
        destinations: [1, 5, 9, 13]
    ),
    Story(//1
      storyText: 'Вы убили его, на шум пришли другие зомби, но вы их тоже '
          'убили',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//2
      storyText: 'Вы убежали, вас мучает совесть',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//3
      storyText: 'Зомби напал на вас, вы заражены',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//4
      storyText: 'Вы связали его одеялом',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//5
      storyText: 'Вы срубили голову топором',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//6
      storyText: 'Вы убежали и чувствуете вину',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//7
      storyText: 'Зомби напал на вас, но вы среагировали',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//8
      storyText: 'Вы его обездвижили, но вы заражены',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//9
      storyText: 'Вы ударили ноутбуком, но вас убили',
      choices: ['Перезапустить'],
      destinations: [0],
    ),
    Story(//10
      storyText: 'Вы убежали и логически оправдали свои действия',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//11
      storyText: 'Зомби напал на вас и вы умерли',
      choices: ['Перезапустить'],
      destinations: [0],
    ),
    Story(//12
      storyText: 'Вы попытались, но вас убили',
      choices: ['Перезапустить'],
      destinations: [0],
    ),
    Story(//13
      storyText: 'Вы срубили голову катаной',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//14
      storyText: 'Вы убежали, вам плевать',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//15
      storyText: 'Зомби напал на вас, но вы его прикончили',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//16
      storyText: 'Вы срубили ему руки и ноги',
      choices: ['Продолжить'],
      destinations: [17],
    ),
    Story(//17
      storyText: 'Чтобы вы не сделали, вам товарища не спасти, нужно '
          'поскорее уходить:',

      choices: ['Безопасная команата', 'Спущусь по лестнице', 'Выйду через '
          'окно', 'Поднимусь на крышу'],
      destinations: [18, 22, 26, 30],
    ),
    Story(//18
      storyText: 'Вы заперлись и умерли с голоду',
      choices: ['Перезапустить',],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//19
      storyText: 'Вы встретили зомби, шум привлек других и вы умерли',
      choices: ['Перезапустить',],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//20
      storyText: 'Вы прыгнули и разбились',
      choices: ['Перезапустить',],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//21
      storyText: 'На крыше вы спустили лестницу и выбрались',
      choices: ['Продолжить'],
      destinations: [34],
    ),
    Story(//22
      storyText: 'Вы заперлись и умерли с голоду',
      choices: ['Перезапустить',],
      destinations: [0],
    ),
    Story(//23
      storyText: 'Вы убили зомби, но были заражены',
      choices: ['Продолжить'],
      destinations: [34],
    ),
    Story(//24
      storyText: 'Вы смогли перепрыгнуть на дерево и спустились',
      choices: ['Продолжить'],
      destinations: [34],
    ),
    Story(//25
      storyText: 'Лестница заела, вам не хватило сил его спустить и вас убили',
      choices: ['Перезапустить'],
      destinations: [0],
    ),
    Story(//26
      storyText: 'Вы подключились к камерам и выбрались(не встретив зомби)',
      choices: ['Продолжить'],
      destinations: [34],
    ),
    Story(//27
      storyText: 'Вы встретили зомби и погибли',
      choices: ['Перезапустить',],
      destinations: [0],
    ),
    Story(//28
      storyText: 'Вы прыгнули и разбились',
      choices: ['Перезапустить',],
      destinations: [0],
    ),
    Story(//29
      storyText: 'Вас убили на крыше',
      choices: ['Перезапустить',],
      destinations: [0],
    ),
    Story(//30
      storyText: 'Вы заперлись и умерли с голоду',
      choices: ['Перезапустить',],
      destinations: [0],
    ),
    Story(//31
      storyText: 'Вы встретили зомби и убили их',
      choices: ['Продолжить'],
      destinations: [34],
    ),
    Story(//32
      storyText: 'Перепрыгнули на дерево, но получили травму',
      choices: ['Продолжить'],
      destinations: [34],
    ),
    Story(//33
      storyText: 'Вы смогли спустить лестницу, но вас успели заразить',
      choices: ['Продолжить'],
      destinations: [34],
    ),
    Story(//34
      storyText: 'Вы выбрались наружу, проходя через спорт-площадку вы увидели парочку на дереве, снизу их ждут зомби. Они не '
          'могут выбраться. ПОМОЖЕТЕ ИМ?',

      choices: ['Убить двух зомбаков', 'Пройти мимо', 'Бросить камень в одного зомби', 'На земле лежит кусок кого-то мяса, '
          'бросить его?'],
      destinations: [35, 39, 43, 47],
    ),
    Story(
      storyText: 'You find a friendly fox. It stares at you curiously.',
      choices: ['Pet it', 'Follow it', 'Ignore it', 'Scare it away'],
      destinations: [4, 2, 3, 4],
    ),
    Story(
      storyText: 'You climb the tree and spot a village far away.',
      choices: [
        'Climb down',
        'Jump across branches',
        'Shout for help',
        'Stay hidden'
      ],
      destinations: [3, 4, 1, 4],
    ),
    Story(
      storyText: 'A voice answers your call. It’s a lost traveler like you.',
      choices: ['Join forces', 'Distrust them', 'Ask for food', 'Leave them'],
      destinations: [4, 4, 4, 4],
    ),


  ];

  Story get currentStory => _storyData[_currentIndex];

  List<String> get currentChoices => currentStory.choices;

  void nextStory(int choiceIndex) {
    final currentChar = GameState.selected_character;
    final overrides = currentChar?.customDestinations[_currentIndex];

    if (overrides != null && overrides.length > choiceIndex) {
      _currentIndex = overrides[choiceIndex];
    } else {
      _currentIndex = currentStory.destinations[choiceIndex];
    }
  }

  bool isEnd() {
    return _currentIndex >= _storyData.length;
  }

  void restart() {
    _currentIndex = 0;
  }
}