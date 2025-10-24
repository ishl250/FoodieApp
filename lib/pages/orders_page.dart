import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  final List<Map<String, String>> orders = const [
    {'name': 'Margherita Pizza', 'quantity': '2', 'price': '16'},
    {'name': 'Cheeseburger', 'quantity': '1', 'price': '6'},
  ];

  @override
  Widget build(BuildContext context) {
    double total = orders.fold(0, (sum, item) => sum + double.parse(item['price']!));
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) => Card(
                margin: const EdgeInsets.only(bottom: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text(orders[index]['name']!),
                  subtitle: Text('Quantity: ${orders[index]['quantity']}'),
                  trailing: Text('\$${orders[index]['price']}'),
                ),
              ),
            ),
          ),
          Text('Total: \$${total.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () {},
            child: const Text('Checkout'),
          ),
        ],
      ),
    );
  }
}
