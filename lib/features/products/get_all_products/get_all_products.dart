import '../../firestore/firestore_read_collection/index.dart';
import '../item/index.dart';

class GetAllProducts {
  List<ProductItem> productsList = [];

  Future<List<ProductItem>> get() async {
    var doc = await FirestoreReadCollection().read("products");
    doc.docs.forEach((item) {
      productsList.add(
        ProductItem(
          type: item["type"],
          description: item["description"],
          price: item["price"],
          rating: item["rating"].toDouble(),
          id: item.id,
          title: item["title"],
          urlImage: item["filename"],
        ),
      );
    });

    return productsList;
  }
}
