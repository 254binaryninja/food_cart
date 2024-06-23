class Food {
  final String name;
  final String description;
  final double price;
  final FoodCategory category;
  final String imagePath;
  List<Addons> availableAddons;

  Food(
      {required this.name,
      required this.description,
      required this.price,
      required this.imagePath,
      required this.availableAddons,
      required this.category});
}

// food category

enum FoodCategory { burgers, salads, desserts, sides, drinks }

// Add ons

class Addons {
  String name;
  double price;

  Addons({required this.name, required this.price});
}
