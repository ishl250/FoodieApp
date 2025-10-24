import 'package:flutter/material.dart';
import 'widgets/category_card.dart';
import 'widgets/restaurant_card.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  final List<String> categories = const ['Pizza', 'Burger', 'Sushi', 'Dessert', 'Drinks'];
  final List<Map<String, String>> restaurants = const [
    {'name': 'Pizza Heaven', 'image': 'assets/images/pizza.jpeg'},
    {'name': 'Burger Hub', 'image': 'assets/images/burger.jpeg'},
    {'name': 'Sushi World', 'image': 'assets/images/sushi.jpeg'},
    {'name': 'Warm', 'image': 'assets/images/kaka.webp'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for food...',
                prefixIcon: const Icon(Icons.search, color: Colors.orange),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Categories
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Categories', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: categories.length,
              itemBuilder: (context, index) => CategoryCard(category: categories[index]),
            ),
          ),
          const SizedBox(height: 16),

          // Restaurants
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Restaurants', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: restaurants.length,
              itemBuilder: (context, index) => RestaurantCard(
                name: restaurants[index]['name']!,
                image: restaurants[index]['image']!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
