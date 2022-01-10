import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../get_all_products/index.dart';
import '../item/index.dart';

class ProductsService {
  final productsList = <ProductItem>[].obs;

  Future<void> getProducts() async {
    productsList.value = await GetAllProducts().get();
    var p;
  }
}
