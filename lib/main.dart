import 'package:curso/homepage.dart';
import 'package:flutter/material.dart';

void main() {

  // Métafora da arvore.
  /// MyApp (stateless) -> MaterialApp -> HomePage (statefull) -> Scaffold -> AppBar -> Text
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Column(
        children: [
          const MyHomePage(title: 'Flutter Demo Home Page'),
        ],
      ),
    );
  }
}
