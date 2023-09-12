import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({key}) : super(key: key);
  static const cardImage = 'assets/images/mag5.png';
  @override
  Widget build(context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(cardImage), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(7))),
        constraints: const BoxConstraints.expand(height: 450, width: 350),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/images/author_katz.jpeg'),
            ),
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headlineLarge,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.headlineLarge,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
