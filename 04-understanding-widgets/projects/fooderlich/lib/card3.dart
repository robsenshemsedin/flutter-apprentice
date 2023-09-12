import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
        ),
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: const BorderRadius.all(Radius.circular(7.0)),
            )),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    size: 40,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 8),
                  // 8
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.titleLarge,
                  ),
                  // 9
                  const SizedBox(height: 30),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 12,
                    children: [
                      Chip(
                          onDeleted: () {},
                          backgroundColor: Colors.black.withOpacity(0.7),
                          label: Text(
                            'Healthy',
                            style: FooderlichTheme.lightTextTheme.titleSmall,
                          )),
                      Chip(
                          onDeleted: () {},
                          backgroundColor: Colors.black.withOpacity(0.7),
                          label: Text(
                            'Vegan',
                            style: FooderlichTheme.lightTextTheme.titleSmall,
                          )),
                      chip('Carrots'),
                      chip('Greens'),
                      chip('Wheat'),
                      chip('Pescetarian'),
                      chip('Mint'),
                      chip('Lemongrass'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget chip(String text) {
    return Chip(
        backgroundColor: Colors.black.withOpacity(0.7),
        label: Text(
          text,
          style: FooderlichTheme.lightTextTheme.titleSmall,
        ));
  }
}
