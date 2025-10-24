import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.orange.shade50, blurRadius: 6, offset: const Offset(0, 4))],
      ),
      child: Center(
        child: Text(category, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      ),
    );
  }
}
