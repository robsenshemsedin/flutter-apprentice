import 'package:flutter/material.dart';
import 'circle_image.dart';

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
              children: [
                Text(
                  authorName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
