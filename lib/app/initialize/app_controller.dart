import 'package:get/get.dart';

import '../../features/products/products_service/index.dart';

class AppController extends GetxController {
  late final ProductsService _productsService;

  @override
  void onInit() async {
    _productsService = Get.put(ProductsService());

    _productsService.getProducts();
  }
}
