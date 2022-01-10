class ProductItem {
  final String id;
  final String title;
  final String type;
  final String description;
  final String urlImage;
  final double price;
  final double rating;

  ProductItem({
    required this.type,
    required this.description,
    required this.price,
    required this.rating,
    required this.id,
    required this.title,
    required this.urlImage,
  });
}
