import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double imageRadius;
  final ImageProvider imageProvider;

  const CircleImage({key, required this.imageProvider, this.imageRadius = 20})
      : super(key: key);

  Widget build(context) {
    return CircleAvatar(
      radius: imageRadius,
      child:
          CircleAvatar(radius: imageRadius - 5, backgroundImage: imageProvider),
    );
  }
}
