import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  final List<Map<String, String>> favorites = const [
    {'name': 'Sushi Roll', 'image': 'assets/images/sushi.jpeg'},
    {'name': 'Chocolate Cake', 'image': 'assets/images/kaka.webp'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: ListTile(
            leading: Image.asset(
              favorites[index]['image']!,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            title: Text(favorites[index]['name']!),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
