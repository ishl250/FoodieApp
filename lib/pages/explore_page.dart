import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  final List<Map<String, String>> dishes = const [
    {'name': 'Margherita Pizza', 'image': 'assets/images/pizza.jpeg', 'price': '8'},
    {'name': 'Cheeseburger', 'image': 'assets/images/burger.jpeg', 'price': '6'},
    {'name': 'California Roll', 'image': 'assets/images/sushi.jpeg', 'price': '10'},
    {'name': 'Chocolate Cake', 'image': 'assets/images/kaka.webp', 'price': '5'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: dishes.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: ListTile(
            leading: Image.asset(
              dishes[index]['image']!,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            title: Text(dishes[index]['name']!),
            subtitle: Text('\$${dishes[index]['price']}'),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {},
              child: const Text('Add'),
            ),
          ),
        );
      },
    );
  }
}
