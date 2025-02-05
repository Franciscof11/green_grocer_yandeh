import 'package:green_grocer_yandeh/features/home_page/domain/models/product_model.dart';

class SectionModel {
  final String section;
  final String description;
  final List<ProductModel> products;

  SectionModel({
    required this.section,
    required this.description,
    required this.products,
  });

  factory SectionModel.fromMap(Map<String, dynamic> map) {
    return SectionModel(
      section: map['section'] ?? '',
      description: map['description'] ?? '',
      products: map['products']
              .map<ProductModel>((product) => ProductModel.fromMap(product)) ??
          <ProductModel>[],
    );
  }

  @override
  String toString() =>
      'SectionModel(section: $section, description: $description, products: $products)';
}
