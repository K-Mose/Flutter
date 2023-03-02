import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    assert(arguments['title'] is String);
    final String title = arguments['title'] as String;
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Text('The Meal! - ${title}'),
      ),
    );
  }
}