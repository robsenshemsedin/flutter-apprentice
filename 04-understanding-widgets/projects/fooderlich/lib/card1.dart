import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  const Card1({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/mag1.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(7))),
        child: Stack(
          children: [
            Text(
              category,
              style: FooderlichTheme.darkTextTheme.titleMedium,
            ),
            Positioned(
              top: 30,
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.titleLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.titleMedium,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
