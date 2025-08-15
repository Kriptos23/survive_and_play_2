class Character {
  final String name;
  final String imagePath; // optional
  final String weaponImagePath;
  final Map<int, List<int>> customDestinations;

  Character({
    required this.name,
    required this.imagePath,
    required this.customDestinations,
    required this.weaponImagePath
  });
}
