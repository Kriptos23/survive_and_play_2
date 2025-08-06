class Character {
  final String name;
  final String imagePath; // optional
  final Map<int, List<int>> customDestinations;

  Character({
    required this.name,
    required this.imagePath,
    required this.customDestinations,
  });
}
