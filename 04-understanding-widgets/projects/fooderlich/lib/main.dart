import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'home.dart';

void main() => runApp(Fooderlich());

class Fooderlich extends StatelessWidget {
  Fooderlich({Key? key}) : super(key: key);
  final theme = FooderlichTheme.darkThemeData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const Home(),
    );
  }
}
