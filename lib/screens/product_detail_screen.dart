import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/product-detail";
  // final String title;

  // ProductDetailScreen(this.title);

  @override
  Widget build(BuildContext context) {
    final String productId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}