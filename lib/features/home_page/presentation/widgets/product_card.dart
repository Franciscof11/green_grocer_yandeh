import 'dart:math';

import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/core/constants/const_colors.dart';
import 'package:green_grocer_yandeh/features/home_page/domain/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 415,
          width: 185,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: addIconOrange,
                      ),
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Image.asset(
                    Random().nextBool()
                        ? 'assets/tomato.png'
                        : 'assets/vagem.png',
                  ),
                ),
                Text(
                  "R\$ ${product.price}",
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: primaryTextColor,
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  width: 85,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: tagBgBlueColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Center(
                      child: Text(
                        '${product.unitContent} ${product.unitMessure}',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: primaryTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  product.ean,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: tertiaryTextColor,
                  ),
                ),
                SizedBox(height: 22),
                Center(
                  child: Text(
                    '${product.packageQuantity} ${product.package.toLowerCase()}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: primaryTextColor,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Center(
                  child: Text(
                    'Yandeh',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: tertiaryTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
