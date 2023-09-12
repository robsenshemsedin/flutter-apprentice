import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';
  static const String cardImage = 'assets/images/mag1.png';

  const Card1({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage(cardImage), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(7))),
        child: Stack(
          children: [
            Text(
              category,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Positioned(
              top: 30,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                chef,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
