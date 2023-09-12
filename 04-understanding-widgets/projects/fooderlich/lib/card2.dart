import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({key}) : super(key: key);
  @override
  Widget build(context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(''), fit: BoxFit.contain)),
        constraints: const BoxConstraints.expand(height: 450, width: 350),
        child: const Column(),
      ),
    );
  }
}
