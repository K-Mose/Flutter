import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen({
  //   required this.categoryId,
  //   required this.categoryTitle
  // });

  @override
  Widget build(BuildContext context) {
    // ModalRoute - material.dart에서 제공하는 라우팅 
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs['title']!),
      ),
      body: const Center(
        child: Text("The Recipes For The Category!"),
      ),
    );
  }
}