import 'package:flutter/material.dart';

import './categories_screen.dart';

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
      canvasColor: Color.fromARGB(255, 0, 162, 255),
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
      home: const CategoriesScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Happy Meals"),
      ),
      body: Center(
        child: Text(
          "text ${context.size.toString()}"
        )
      ),
    );
  }
}
