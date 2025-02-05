class ProductModel {
  final int id;
  final String name;
  final String sku;
  final String category;
  final String unitType;
  final String package;
  final String ean;
  final int unitContent;
  final String unitMessure;
  final int packageQuantity;
  final String price;

  ProductModel({
    required this.id,
    required this.name,
    required this.sku,
    required this.category,
    required this.unitType,
    required this.package,
    required this.ean,
    required this.unitContent,
    required this.unitMessure,
    required this.packageQuantity,
    required this.price,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      sku: map['sku'] ?? '',
      category: map['category'] ?? '',
      unitType: map['unitType'] ?? '',
      package: map['package'] ?? '',
      ean: map['ean'] ?? '',
      unitContent: map['unitContent'] ?? 0,
      unitMessure: map['unitMessure'] ?? '',
      packageQuantity: map['packageQuantity'] ?? 0,
      price: map['price'] ?? '',
    );
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, sku: $sku, category: $category, unitType: $unitType, package: $package, ean: $ean, unitContent: $unitContent, unitMessure: $unitMessure, packageQuantity: $packageQuantity, price: $price)';
  }
}
