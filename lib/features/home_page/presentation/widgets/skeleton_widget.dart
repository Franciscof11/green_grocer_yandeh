import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/skeleton_component.dart';

class SkeletonWidget extends StatelessWidget {
  final bool isWeb;
  const SkeletonWidget({
    super.key,
    this.isWeb = false,
  });

  @override
  Widget build(BuildContext context) {
    return isWeb
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: Column(
              children: [
                SizedBox(height: 30),
                SkeletonComponent(
                  width: MediaQuery.sizeOf(context).width,
                  height: 400,
                ),
                SizedBox(height: 30),
                SkeletonComponent(
                  width: MediaQuery.sizeOf(context).width,
                  height: 400,
                ),
                SizedBox(height: 30),
                SkeletonComponent(
                  width: MediaQuery.sizeOf(context).width,
                  height: 400,
                ),
                SizedBox(height: 30),
                SkeletonComponent(
                  width: MediaQuery.sizeOf(context).width,
                  height: 400,
                ),
                SizedBox(height: 50),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 30),
                SkeletonComponent(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                ),
                SizedBox(height: 30),
                SkeletonComponent(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                ),
                SizedBox(height: 30),
                SkeletonComponent(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                ),
                SizedBox(height: 30),
                SkeletonComponent(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                ),
                SizedBox(height: 50),
              ],
            ),
          );
  }
}
