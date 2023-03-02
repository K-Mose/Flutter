import 'package:flutter/material.dart';

import '/screens./categories_screen.dart';
import './screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
        
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primarySwatch: Colors.yellow,
      canvasColor: Colors.yellow[200],
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
        bodyLarge: const TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1)
        ),
        bodyMedium: const TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1)
        ),
        bodySmall: const TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1)
        ),
        titleLarge:const TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold
        ), 
      ),
      appBarTheme: AppBarTheme.of(context).copyWith(
        color: Colors.pink[300]
      )
    );

    return MaterialApp(
      title: 'Meals App',
      theme: theme.copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          secondary: Colors.amber,
        ),
      ),
      // home: const CategoriesScreen(),
      routes: {
        // '/'를 라우팅하면 home 페이지로 설정
        '/' :(context) => const CategoriesScreen(),
        CategoryMealsScreen.routeName : (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
