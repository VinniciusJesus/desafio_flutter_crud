import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:vaga_pleno_challenge/app/widgets/popup/index.dart';
import 'package:vaga_pleno_challenge/features/firestore/firestore_update_collection/index.dart';
import 'package:vaga_pleno_challenge/features/products/item/index.dart';
import 'package:vaga_pleno_challenge/features/products/products_service/index.dart';
import 'package:vaga_pleno_challenge/modules/edit/domain/usecases/validate_edit_form/index.dart';

class EditProduct {
  final ProductsService _productsService = Get.find();

  Future<void> edit(ProductItem newItem) async {
    if (ValidateEditFrom().validate(newItem) == true) {
      FirestoreUpdateCollection().update(
        documentID: newItem.id,
        collection: "products",
        data: {
          "type": newItem.type,
          "description": newItem.description,
          "price": newItem.price.toDouble(),
          "rating": newItem.rating,
          "title": newItem.title,
        },
      );
      await _productsService.getProducts();

      Popup().closeButton("Tudo certo!", "Você editou este produto com sucesso",
          alertType: AlertType.success);
    }
  }
}
