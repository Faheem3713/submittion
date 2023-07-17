class ProductModel {
  final int id;
  final String title;
  final String description;
  final num price;

  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price});

  factory ProductModel.fromJson(Map json) {
    return ProductModel(
        id: json['id'] ?? '',
        title: json['title'] ?? '',
        description: json['description'] ?? "",
        price: json['price']);
  }
}
