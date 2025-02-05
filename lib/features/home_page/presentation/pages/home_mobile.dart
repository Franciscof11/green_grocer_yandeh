import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/core/constants/const_colors.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/mobile_header.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/products_block.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/sections_zone.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            MobileHeader(),
            SizedBox(height: 16),
            SectionsZone(),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ProductsBlock(
                title: 'Fracionados',
                bgColor: vegetablesGreen,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ProductsBlock(
                title: 'Em promoção',
                bgColor: redProductBlock,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
