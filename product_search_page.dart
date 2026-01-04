import 'package:flutter/material.dart';

class ProductSearchPage extends StatelessWidget {
  const ProductSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sök produkter'),
      ),
      body: const Center(
        child: Text('Söksida - Kommer snart!'),
      ),
    );
  }
}
