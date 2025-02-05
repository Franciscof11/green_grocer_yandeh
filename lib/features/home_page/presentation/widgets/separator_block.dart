import 'package:flutter/material.dart';

class SeparatorBlock extends StatelessWidget {
  const SeparatorBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 300,
        color: Colors.amber,
      ),
    );
  }
}
