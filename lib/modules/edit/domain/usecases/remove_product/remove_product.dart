import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:vaga_pleno_challenge/app/widgets/popup/index.dart';
import 'package:vaga_pleno_challenge/features/firestore/firestore_delete_collection/index.dart';
import 'package:vaga_pleno_challenge/features/products/item/index.dart';
import 'package:vaga_pleno_challenge/features/products/products_service/index.dart';

class RemoveProduct {
  final ProductsService _productsService = Get.find();
  Future<void> remove(ProductItem item) async {
    await FirestoreDeleteCollection().delete("products", item.id);
    await _productsService.getProducts();
     Popup().closeButton("Tudo certo!", "Você editou este produto com sucesso",
        alertType: AlertType.success);
  }
}
