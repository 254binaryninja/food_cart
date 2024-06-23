import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    //burgers
    //cheese_burger
    Food(
        name: "Cheese Burger",
        description:
            "A juicy beef patty with melted cheddar including lettuce and tomatoes",
        price: 180,
        imagePath: "lib/images/burger/cheeseburger.jpg",
        availableAddons: [
          Addons(name: "Extra Cheese", price: 50),
          Addons(name: "Bacon", price: 50),
          Addons(name: "Avocado", price: 50),
        ],
        category: FoodCategory.burgers),
    // hamburger
    Food(
        name: "HamBurger",
        description: "A  Sandwich consisting minced beef ",
        price: 180,
        imagePath: "lib/images/burger/hamburger.jpg",
        availableAddons: [
          Addons(name: "Bacon", price: 50),
          Addons(name: "Avocado", price: 50),
        ],
        category: FoodCategory.burgers),
    // mushroom burger
    Food(
        name: "Mushroom burger",
        description: "A juicy bun consisting mushrooms in the middle",
        price: 180,
        imagePath: "lib/images/burger/mushroomburger.jpg",
        availableAddons: [
          Addons(name: "Avocado", price: 50),
        ],
        category: FoodCategory.burgers),
    // turkey burger
    Food(
        name: "Turkey burger",
        description:
            "A juicy  patty made with the finest turkey meat melted cheddar including lettuce and tomatoes",
        price: 180,
        imagePath: "lib/images/burger/turkeyburger.jpg",
        availableAddons: [
          Addons(name: "Extra Cheese", price: 50),
          Addons(name: "Bacon", price: 50),
        ],
        category: FoodCategory.burgers),
    // veggie
    Food(
        name: "Veggie Burger",
        description: "A juicy burger for our animal loving friends",
        price: 180,
        imagePath: "lib/images/burger/veggie.jpg",
        availableAddons: [
          Addons(name: "Mayonnaise", price: 30),
          Addons(name: "Avocado", price: 50),
        ],
        category: FoodCategory.burgers),
    // dessert
    //Cake
    Food(
        name: "Cake dessert",
        description: "A perfect way to enjoy your food ",
        price: 350,
        imagePath: "lib/images/dessert/cake.jpg",
        availableAddons: [
          Addons(name: " Chocolate Syrup", price: 50),
        ],
        category: FoodCategory.desserts),
    // gelatin
    Food(
        name: "gelatin",
        description: "A perfect way to enjoy your food with mushiness ",
        price: 250,
        imagePath: "lib/images/dessert/gelatin.jpg",
        availableAddons: [
          Addons(name: " Chocolate Syrup", price: 50),
        ],
        category: FoodCategory.desserts),
    // pie
    Food(
        name: "Pie",
        description:
            "A perfect wheat made sugar delicacy to align with your meal",
        price: 450,
        imagePath: "lib/images/burger/cheeseburger.jpg",
        availableAddons: [
          Addons(name: " Chocolate Syrup", price: 50),
          Addons(name: " Icing Sugar", price: 100),
        ],
        category: FoodCategory.desserts),
    // pudding
    Food(
        name: "Pudding",
        description: "A perfect way to enjoy your food ",
        price: 350,
        imagePath: "lib/images/burger/cheeseburger.jpg",
        availableAddons: [
          Addons(name: " Chocolate Syrup", price: 50),
          Addons(name: "Ice  Cream", price: 100),
          Addons(name: "Yoghurt", price: 50),
        ],
        category: FoodCategory.desserts),
    //tarts
    Food(
        name: "Tarts",
        description: "A perfect way to enjoy your food ",
        price: 350,
        imagePath: "lib/images/dessert/tarts.jpg",
        availableAddons: [
          Addons(name: " Chocolate Syrup", price: 50),
        ],
        category: FoodCategory.desserts),
    //drinks
    //cider
    Food(
        name: "Cider",
        description: "A perfect blend of the best high class Apples ",
        price: 350,
        imagePath: "lib/images/drinks/cider.jpg",
        availableAddons: [
          Addons(name: "Ice cubes", price: 50),
        ],
        category: FoodCategory.drinks),
    //coffee
    Food(
        name: "Coffee",
        description: "A perfect way to start up your activities ",
        price: 350,
        imagePath: "lib/images/drinks/coffee.jpg",
        availableAddons: [
          Addons(name: "Sugar", price: 50),
        ],
        category: FoodCategory.drinks),

    // energy
    Food(
        name: "Energy drinks",
        description: "Gives you wings",
        price: 350,
        imagePath: "lib/images/drinks/energy.jpg",
        availableAddons: [
          Addons(name: "Ice cubes", price: 50),
        ],
        category: FoodCategory.drinks),
    //milk
    Food(
        name: "Flavoured milk",
        description: "Dairy products with more excitement",
        price: 350,
        imagePath: "lib/images/drinks/cider.jpg",
        availableAddons: [
          Addons(name: "Strawberry", price: 50),
          Addons(name: "Vanilla", price: 50),
          Addons(name: "Banana", price: 50),
        ],
        category: FoodCategory.drinks),
    // wine
    Food(
        name: "Wine",
        description: "Luxury",
        price: 180,
        imagePath: "lib/images/drinks/wine.jpg",
        availableAddons: [
          Addons(name: "chaser", price: 50),
        ],
        category: FoodCategory.drinks),
    // salads
    // bound
    Food(
        name: "Bound Salad",
        description: "A perfect blend of your favourite farm products ",
        price: 350,
        imagePath: "lib/images/salads/bound.jpg",
        availableAddons: [
          Addons(name: "Avocado", price: 50),
          Addons(name: "Cabbage", price: 50),
        ],
        category: FoodCategory.salads),
    //dessert
    Food(
        name: "Dessert Salad",
        description: "A perfect way to enjoy your food ",
        price: 350,
        imagePath: "lib/images/salads/bound.jpg",
        availableAddons: [
          Addons(name: "Avocado", price: 50),
          Addons(name: "Cherry", price: 50),
        ],
        category: FoodCategory.salads),
    // dinner
    Food(
        name: "Dinner Salad",
        description: "A perfect blend of your favourite farm products ",
        price: 350,
        imagePath: "lib/images/salads/dinner.jpg",
        availableAddons: [
          Addons(name: "Avocado", price: 50),
          Addons(name: "Cabbage", price: 50),
        ],
        category: FoodCategory.salads),
    // fruit
    Food(
        name: "Bound Salad",
        description: "A perfect blend of your favourite farm products ",
        price: 350,
        imagePath: "lib/images/salads/fruit.jpg",
        availableAddons: [
          Addons(name: "Strawberry", price: 50),
          Addons(name: "Cherry", price: 50),
        ],
        category: FoodCategory.salads),
    // green
    Food(
        name: "Green Salad",
        description: "A perfect blend of your favourite farm products ",
        price: 350,
        imagePath: "lib/images/salads/green.jpg",
        availableAddons: [
          Addons(name: "Cabbage", price: 50),
        ],
        category: FoodCategory.salads),
    // sides
    // asparagus
    Food(
        name: "Asparagus",
        description:
            "A perfect blend of your favourite farm products for a side dish",
        price: 350,
        imagePath: "lib/images/sides/asparagus.jpg",
        availableAddons: [
          Addons(name: "Avocado", price: 50),
          Addons(name: "Cabbage", price: 50),
        ],
        category: FoodCategory.sides),
    // baked beans
    Food(
        name: "Baked Beans",
        description: "A  mouthwatering plate of high_quality baked beans",
        price: 350,
        imagePath: "lib/images/sides/baked beans.jpg",
        availableAddons: [
          Addons(name: "Avocado", price: 50),
          Addons(name: "Cabbage", price: 50),
        ],
        category: FoodCategory.sides),
    // broccoli
    Food(
        name: "Broccoli",
        description:
            "A perfect blend of your favourite farm products for a side dish",
        price: 350,
        imagePath: "lib/images/sides/broccoli.jpg",
        availableAddons: [
          Addons(name: "Avocado", price: 50),
          Addons(name: "Cabbage", price: 50),
        ],
        category: FoodCategory.sides),
    //dinner
    Food(
        name: "Dinner rolls",
        description: "A perfect blend of a  wheat side dish",
        price: 350,
        imagePath: "lib/images/sides/dinner rolls.jpg",
        availableAddons: [
          Addons(name: "Avocado", price: 50),
        ],
        category: FoodCategory.sides),
    // sprouts
    Food(
        name: "Sprouts",
        description:
            "A perfect blend of your favourite farm products for a side dish",
        price: 350,
        imagePath: "lib/images/sides/sprouts.jpg",
        availableAddons: [
          Addons(name: "Avocado", price: 50),
          Addons(name: "Cabbage", price: 50),
        ],
        category: FoodCategory.sides),
  ];

/* Getters*/
  List<Food> get menu => _menu;
/*Operations*/
//add to cart
//remove from cart
// total price
// total no of items in cart
// clear cart

/*Helpers*/
// generate a receipt
// format double value int money
// convert addons into string summary
}
