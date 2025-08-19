import 'package:survive_and_play_2/classes/GameState.dart';

import 'classes/Story.dart';

class StoryBrain {
  int _currentIndex = 0;
  static int _lives = 3;
  int _prevStoryIndex = 0;

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
      outcome: OutcomeType.success,
    ),
    Story(//2
      storyText: 'Вы убежали, вас мучает совесть',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.neutral,
    ),
    Story(//3
      storyText: 'Зомби напал на вас, вы заражены',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.neutral,
    ),
    Story(//4
      storyText: 'Вы связали его одеялом',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.success,
    ),
    Story(//5
      storyText: 'Вы срубили голову топором',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.success,
    ),
    Story(//6
      storyText: 'Вы убежали и чувствуете вину',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.neutral,
    ),
    Story(//7
      storyText: 'Зомби напал на вас, но вы среагировали',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.success,
    ),
    Story(//8
      storyText: 'Вы его обездвижили, но вы заражены',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.neutral,
    ),
    Story(//9
      storyText: 'Вы ударили ноутбуком, но вас убили',
      choices: ['Перезапустить'],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//10
      storyText: 'Вы убежали и логически оправдали свои действия',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.success,
    ),
    Story(//11
      storyText: 'Зомби напал на вас и вы умерли',
      choices: ['Перезапустить'],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//12
      storyText: 'Вы попытались, но вас убили',
      choices: ['Перезапустить'],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//13
      storyText: 'Вы срубили голову катаной',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.success,
    ),
    Story(//14
      storyText: 'Вы убежали, вам плевать',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.success,
    ),
    Story(//15
      storyText: 'Зомби напал на вас, но вы его прикончили',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.success,
    ),
    Story(//16
      storyText: 'Вы срубили ему руки и ноги',
      choices: ['Продолжить'],
      destinations: [17],
      outcome: OutcomeType.success,
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
      outcome: OutcomeType.success,
    ),
    Story(//22
      storyText: 'Вы заперлись и умерли с голоду',
      choices: ['Перезапустить',],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//23
      storyText: 'Вы убили зомби, но были заражены',
      choices: ['Продолжить'],
      destinations: [34],
      outcome: OutcomeType.neutral,
    ),
    Story(//24
      storyText: 'Вы смогли перепрыгнуть на дерево и спустились',
      choices: ['Продолжить'],
      destinations: [34],
      outcome: OutcomeType.success,
    ),
    Story(//25
      storyText: 'Лестница заела, вам не хватило сил его спустить и вас убили',
      choices: ['Перезапустить'],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//26
      storyText: 'Вы подключились к камерам и выбрались(не встретив зомби)',
      choices: ['Продолжить'],
      destinations: [34],
      outcome: OutcomeType.success,
    ),
    Story(//27
      storyText: 'Вы встретили зомби и погибли',
      choices: ['Перезапустить',],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//28
      storyText: 'Вы прыгнули и разбились',
      choices: ['Перезапустить',],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//29
      storyText: 'Вас убили на крыше',
      choices: ['Перезапустить',],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//30
      storyText: 'Вы заперлись и умерли с голоду',
      choices: ['Перезапустить',],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//31
      storyText: 'Вы встретили зомби и убили их',
      choices: ['Продолжить'],
      destinations: [34],
      outcome: OutcomeType.success,
    ),
    Story(//32
      storyText: 'Перепрыгнули на дерево, но получили травму',
      choices: ['Продолжить'],
      destinations: [34],
      outcome: OutcomeType.neutral,
    ),
    Story(//33
      storyText: 'Вы смогли спустить лестницу, но вас успели заразить',
      choices: ['Продолжить'],
      destinations: [34],
      outcome: OutcomeType.neutral,
    ),
    Story(//34
      storyText: 'Вы выбрались наружу, проходя через спорт-площадку вы увидели парочку на дереве, снизу их ждут зомби. Они не '
          'могут выбраться. ПОМОЖЕТЕ ИМ?',

      choices: ['Убить двух зомбаков', 'Пройти мимо', 'Бросить камень в одного зомби', 'На земле лежит кусок кого-то мяса, '
          'бросить его?'],
      destinations: [35, 39, 43, 47],
    ),
    Story(//35
      storyText: 'Вы убиваете этих зомбаков, но вы заражены',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.neutral,
    ),
    Story(//36
      storyText: 'Вы прошли мимо и вас мучает совесть',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.neutral,
    ),
    Story(//37
      storyText: 'Вы отвлекли зомби на себя и спасли парочку',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//38
      storyText: 'Зомби отвелклись на мясо',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//39
      storyText: 'Вы сзади рубите голову одному зомбаку, затем второму',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//40
      storyText: 'Вы ушли и чувстуете за это вину',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.neutral,
    ),
    Story(//41
      storyText: 'Вы отвлекли зомби и спасли их',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//42
      storyText: 'Зомби отвлеклись на мясо',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//43
      storyText: 'Вы умерли, а парочка спаслась',
      choices: ['Перезапустить'],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//44
      storyText: 'Вы ушли и логически оправдали свои действия',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//45
      storyText: 'Вы отвлекли на себя зомби, вас убили, при этом пара выжила',
      choices: ['Перезапустить'],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//46
      storyText: 'Зомби отвлеклись на кусок мяса',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//47
      storyText: 'Вы одним движением катаны рассекаете им головы',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//48
      storyText: 'Вы прошли мимо(вам плевать)',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//49
      storyText: 'Вы отвлекли на себя зомби',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//50
      storyText: 'Зомби отвлеклись на мясо',
      choices: ['Продолжить'],
      destinations: [51],
      outcome: OutcomeType.success,
    ),
    Story(//51
      storyText: 'Вы вошли в универ и встретили охранника '
          '\nЧТО БУДЕТЕ ДЕЛАТЬ?(он не знает о происходящем)',
      choices: ['Убить его', 'Рассказать обо всём', 'Проигнорировать', 'Выйти из универа'],
      destinations: [52, 56, 60, 64],
    ),
    Story(//52
      storyText: 'Вы убили его и вас мучает совесть\n(доверие парочки к вам снизилось)',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.neutral,
    ),
    Story(//53
      storyText: 'Вам поверили на слоов \n(благодаря харизме)',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.success,
    ),
    Story(//54
      storyText: 'Ему это не понравилось и он напал на вас. Вы его убили ударом',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.neutral,
    ),
    Story(//55
      storyText: 'На вас напали зомби, вы убежали в универ, но вас успели ранить',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.neutral,
    ),
    Story(//56
      storyText: 'Вы убили его и вы чувствуете вину\n(доверие парочки к вам снизилось) ',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.neutral,
    ),
    Story(//57
      storyText: 'Он не поверил и вы подрались',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.neutral,
    ),
    Story(//58
      storyText: 'Он схватил вас за руку, и вы вырубили его одним ударом ',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.success,
    ),
    Story(//59
      storyText: 'На вас напали зомби, вы забежали в универ',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.success,
    ),
    Story(//60
      storyText: 'Вас избили, вы ранены',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.neutral,
    ),
    Story(//61
      storyText: 'Вы показали камеры с общежития, и вам поверили',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.success,
    ),
    Story(//62
      storyText: 'Он вас побил за такое отношение',
      choices: ['Продолжить'],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//63
      storyText: 'Вы умерли от нападения зомби',
      choices: ['Продолжить'],
      destinations: [0],
      outcome: OutcomeType.failure,
    ),
    Story(//64
      storyText: 'Вы убили его\n(доверие парочки к вам снизилось',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.neutral,
    ),
    Story(//65
      storyText: 'с',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.neutral,
    ),
    Story(//66
      storyText: 'Он начал применять силу, и вы без проблем его вырубили ',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.success,
    ),
    Story(//67
      storyText: 'На вас напали зомби, вы забежали в универ ',
      choices: ['Продолжить'],
      destinations: [68],
      outcome: OutcomeType.success,
    ),

  ];

  /* ШАБЛОН

  Story(//
      storyText: 'Вы ',
      choices: ['Продолжить'],
      destinations: [],
      outcome: OutcomeType.,
    ),

    Story(//
      storyText: '',

      choices: ['', '', '', ''],

      destinations: [35, 39, 43, 47],
     )
   */

  Story get currentStory => _storyData[_currentIndex];//returns object Story with initial index 0, meaning starting Story with
  // starting text

  List<String> get currentChoices => currentStory.choices;//return List(array) of String, choices of Story above

  void nextStory(int choiceIndex) {
    final currentChar = GameState.selected_character;
    final overrides = currentChar?.customDestinations[_currentIndex];//So this is a list of string, choices of a character

    if(currentStory.outcome == OutcomeType.storyWhite){
      _prevStoryIndex = _currentIndex;
    }

    // Determine next index
    int nextIndex;
    if (overrides != null && overrides.length > choiceIndex) {
      nextIndex = overrides[choiceIndex];
    } else {
      nextIndex = currentStory.destinations[choiceIndex];
    }

    // Handle lives decrement
    if (currentStory.outcome == OutcomeType.failure && _lives > 0) {
        loseLife();
        _currentIndex = _prevStoryIndex;
      // go back to previous story
    }
    else {
      _currentIndex = nextIndex;
    }

    // if (overrides != null && overrides.length > choiceIndex) {//customDestination == null means no custom choice for the
    //   // character, if null goes to else
    //   _currentIndex = overrides[choiceIndex];//It goes to the next story based on selected charcter because _currentIndex is
    //   // being used in getter
    //   // currentStory which is above
    //   if(_lives != 0 && currentStory.outcome == OutcomeType.failure){
    //     --_lives;
    //     _currentIndex = _prevStoryIndex;
    //   }
    // } else {
    //   _currentIndex = currentStory.destinations[choiceIndex];//if character doesn't have a custom choice, then it goes to the
    //   // story which is in choice
    // }
  }

  bool isEnd() {
    return _currentIndex >= _storyData.length;
  }

  void restart() {
    _currentIndex = 0;
  }

  static int get lives_count => _lives;

  static void loseLife() {
    if (_lives > 0) _lives--;
  }
  static void resetLives() {
    _lives = 3;
  }
}