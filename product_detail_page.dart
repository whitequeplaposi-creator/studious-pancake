import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productId;
  
  const ProductDetailPage({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produktdetaljer'),
      ),
      body: Center(
        child: Text('Produktsida för ID: $productId - Kommer snart!'),
      ),
    );
  }
}
