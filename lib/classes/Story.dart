enum OutcomeType { success, failure, neutral, storyWhite }

class Story
{
  late final String storyText;
  late final List<String> choices;
  late final List <int> destinations;
  final OutcomeType outcome;

  Story({required this.storyText, required this.choices, required this
      .destinations, this.outcome = OutcomeType.storyWhite,});

}

