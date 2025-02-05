import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/core/constants/const_colors.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/section_card.dart';

class SectionsZone extends StatelessWidget {
  final bool isWeb;
  const SectionsZone({
    super.key,
    this.isWeb = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        isWeb
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Image.asset(
                  'assets/web_section_zone.png',
                  height: 400,
                  alignment: Alignment.center,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.fill,
                ),
              )
            : Image.asset(
                'assets/yandeh_card.png',
              ),
        if (isWeb)
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 220),
              child: Image.asset(
                'assets/yandeh_white_logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        isWeb
            ? Center(
                child: SizedBox(
                  height: 112,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: SectionCard(
                          bgColor: vegetablesGreen,
                          label: 'Legumes',
                          imagePath: 'assets/vegetables.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: SectionCard(
                          bgColor: fruitsGreen,
                          label: 'Frutas',
                          imagePath: 'assets/fruits.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: SectionCard(
                          bgColor: spicesRed,
                          label: 'Temperos',
                          imagePath: 'assets/spices.png',
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : SizedBox(
                height: 112,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: SectionCard(
                        bgColor: vegetablesGreen,
                        label: 'Legumes',
                        imagePath: 'assets/vegetables.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SectionCard(
                        bgColor: fruitsGreen,
                        label: 'Frutas',
                        imagePath: 'assets/fruits.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 32),
                      child: SectionCard(
                        bgColor: spicesRed,
                        label: 'Temperos',
                        imagePath: 'assets/spices.png',
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
