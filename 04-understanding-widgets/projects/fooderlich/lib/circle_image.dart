import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double imageRadius;
  final ImageProvider imageProvider;

  const CircleImage({key, required this.imageProvider, this.imageRadius = 20})
      : super(key: key);
  @override
  Widget build(context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).colorScheme.background,
      radius: imageRadius,
      child:
          CircleAvatar(radius: imageRadius - 5, backgroundImage: imageProvider),
    );
  }
}
