import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vaga_pleno_challenge/app/widgets/index.dart';
import 'package:vaga_pleno_challenge/features/products/item/product_model.dart';
import 'package:vaga_pleno_challenge/modules/edit/domain/usecases/edit_product/index.dart';

class EditController extends GetxController {
  final titleEC = TextEditingController();
  final typeEC = TextEditingController();
  final descriptionEC = TextEditingController();
  final priceEC = TextEditingController();

  RxDouble rating = 0.0.obs;

  void repeatForm(ProductItem item) {
    titleEC.text = item.title;
    typeEC.text = item.type;
    descriptionEC.text = item.description;
    priceEC.text = item.price.toString();
    rating.value = item.rating;
  }

  Future<void> edit(ProductItem item) async {
    if (priceEC.text.isEmpty) {
      SnackbarImpl().error("Digite o novo preço!");
      return;
    }
    final newProduct = ProductItem(
        type: typeEC.text,
        description: descriptionEC.text,
        price: double.parse(priceEC.text),
        rating: rating.value,
        id: item.id,
        title: titleEC.text,
        urlImage: item.urlImage);

    await EditProduct().edit(newProduct);
  }
}
