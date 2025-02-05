import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/core/constants/const_colors.dart';
import 'package:green_grocer_yandeh/features/home_page/domain/models/section_model.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/products_block.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/separator_block.dart';

class SectionController {
  Widget checkSection(SectionModel section) {
    if (section.products.isEmpty) {
      bool isHortfruit = false;
      if (section.title == 'Hortifruti') isHortfruit = true;
      return SeparatorBlock(
        isHortifruti: isHortfruit,
      );
    }
    return ProductsBlock(
      bgColor: checkColor(section.title),
      title: section.title,
      products: section.products,
    );
  }

  Color checkColor(String sectionTitle) {
    switch (sectionTitle) {
      case 'Fracionados':
        return vegetablesGreen;
      case 'Promo':
        return redProductBlock;
      case 'Descubra':
        return discoverBgColor;
      case 'Frutas':
        return fruitsGreen;
      case 'Legumes':
        return vegetablesGreen;
      case 'Temperos':
        return spicesRed;
      default:
        return Colors.white;
    }
  }
}
