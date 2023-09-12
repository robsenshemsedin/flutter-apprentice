import 'package:flutter/material.dart';
import 'circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthorCard(
      {required this.authorName,
      required this.imageProvider,
      required this.title,
      key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(children: [
        Row(
          children: [
            CircleImage(
              imageProvider: imageProvider,
              imageRadius: 28,
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  authorName,
                  style: FooderlichTheme.lightTextTheme.titleLarge,
                ),
                Text(
                  title,
                  style: FooderlichTheme.lightTextTheme.titleMedium,
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
