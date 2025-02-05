import 'package:flutter/material.dart';
import 'package:green_grocer_yandeh/core/constants/const_colors.dart';
import 'package:green_grocer_yandeh/features/home_page/domain/models/product_model.dart';
import 'package:green_grocer_yandeh/features/home_page/presentation/widgets/product_card.dart';

class ProductsBlock extends StatelessWidget {
  final bool isWeb;
  final Color bgColor;
  final String title;
  final List<ProductModel> products;
  const ProductsBlock({
    super.key,
    required this.bgColor,
    required this.title,
    required this.products,
    this.isWeb = false,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    double previousOffset = 0.0;
    bool isDragging = false;

    return isWeb
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 10),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: bgColor,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 18, top: 12, bottom: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: Colors.white,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: primaryTextColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: SizedBox(
                    height: 435,
                    child: Scrollbar(
                      controller: scrollController,
                      thickness: 12,
                      child: GestureDetector(
                        onHorizontalDragStart: (details) {
                          isDragging = true;
                          previousOffset = details.globalPosition.dx;
                        },
                        onHorizontalDragUpdate: (details) {
                          if (isDragging) {
                            double delta =
                                previousOffset - details.globalPosition.dx;
                            scrollController.jumpTo(
                              (scrollController.offset + delta).clamp(
                                0.0,
                                scrollController.position.maxScrollExtent,
                              ),
                            );
                            previousOffset = details.globalPosition.dx;
                          }
                        },
                        onHorizontalDragEnd: (details) {
                          isDragging = false;
                        },
                        child: ListView.builder(
                          controller: scrollController,
                          itemCount: products.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: ProductCard(
                              product: products[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Stack(
              children: [
                Container(
                  width: 380,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: bgColor,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 18, top: 12, bottom: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: Colors.white,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: primaryTextColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: SizedBox(
                    height: 450,
                    child: ListView.builder(
                      itemCount: products.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: ProductCard(
                          product: products[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
