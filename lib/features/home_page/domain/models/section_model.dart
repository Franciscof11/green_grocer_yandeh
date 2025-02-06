import 'package:green_grocer_yandeh/features/home_page/domain/models/product_model.dart';

class SectionModel {
  final String title;
  final String description;
  final List<ProductModel> products;

  SectionModel({
    required this.title,
    required this.description,
    required this.products,
  });

  factory SectionModel.fromMap(Map<String, dynamic> map) {
    return SectionModel(
      title: map['section'] ?? '',
      description: map['description'] ?? '',
      products: map['products']
              .map<ProductModel>((product) => ProductModel.fromMap(product))
              .toList() ??
          <ProductModel>[],
    );
  }

  factory SectionModel.empty() {
    return SectionModel(
      title: '',
      description: '',
      products: <ProductModel>[],
    );
  }

  @override
  String toString() =>
      'SectionModel(section: $title, description: $description, products: $products)';
}
