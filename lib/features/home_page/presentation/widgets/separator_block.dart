import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/core/constants/const_colors.dart';

class SeparatorBlock extends StatelessWidget {
  final bool isHortifruti;
  final bool isWeb;
  const SeparatorBlock({
    super.key,
    required this.isHortifruti,
    this.isWeb = false,
  });

  @override
  Widget build(BuildContext context) {
    return isWeb
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 300,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      isHortifruti
                          ? 'assets/web_hortifruit.png'
                          : 'assets/web_separator.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.sizeOf(context).width,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        SizedBox(height: 8),
                        IntrinsicWidth(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 76,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: isHortifruti
                                  ? hortfruitBgColor
                                  : separatorBlocOrange,
                            ),
                            child: Center(
                              child: Text(
                                isHortifruti
                                    ? 'Hortifruti Perfeito!'
                                    : 'Queridinhos!',
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        Text(
                          isHortifruti
                              ? 'Veja opções fresquinhas para\n abastecer seu hortifruti.'
                              : 'Veja os produtos mais queridos\npelos nossos clientes.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 14),
                        Container(
                          width: 160,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Ver mais',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, bottom: 32),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    isHortifruti
                        ? 'assets/hortifruti.png'
                        : 'assets/separator_image.png',
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 8),
                    IntrinsicWidth(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 32),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: isHortifruti
                              ? hortfruitBgColor
                              : separatorBlocOrange,
                        ),
                        child: Center(
                          child: Text(
                            isHortifruti
                                ? 'Hortifruti Perfeito!'
                                : 'Queridinhos!',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      isHortifruti
                          ? 'Veja opções fresquinhas para\n abastecer seu hortifruti.'
                          : 'Veja os produtos mais queridos\npelos nossos clientes.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 94,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Ver mais',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
