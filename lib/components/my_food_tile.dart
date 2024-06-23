import 'package:flutter/material.dart';
import 'package:food_cart/model/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                // Food Text details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        'Ksh' + food.price.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Text(food.description),
                    ],
                  ),
                ),
                // Image Asset with rounded corners
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(60.0), // Evenly rounded corners
                  child: Container(
                    height: 120,
                    width: 120,
                    color:
                        Colors.grey, // Placeholder color while the image loads
                    child: Image.asset(
                      food.imagePath,
                      fit: BoxFit
                          .cover, // Ensure the image covers the entire area
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
