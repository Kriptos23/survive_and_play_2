class Character {
  final String name;
  final String imagePath;
  final List<String> characteristics;
  final String weaponImagePath;
  final List<String> weaponDescription;
  final Map<int, List<int>> customDestinations;

  Character({
    required this.name,
    required this.imagePath,
    required this.characteristics,
    required this.weaponImagePath,
    required this.weaponDescription,
    required this.customDestinations,
  });
}
