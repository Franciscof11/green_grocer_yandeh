// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SkeletonComponent extends StatelessWidget {
  const SkeletonComponent({super.key, this.height, this.width});

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}
