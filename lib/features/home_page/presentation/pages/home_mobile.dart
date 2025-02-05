import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/core/constants/const_colors.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/mobile_header.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/products_block.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/sections_zone.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/separator_block.dart';

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
            ProductsBlock(
              title: 'Fracionados',
              bgColor: vegetablesGreen,
            ),
            ProductsBlock(
              title: 'Em promoção',
              bgColor: redProductBlock,
            ),
            SeparatorBlock(),
          ],
        ),
      ),
    );
  }
}
