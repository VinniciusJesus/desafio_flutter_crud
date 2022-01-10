import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:vaga_pleno_challenge/app/widgets/popup/index.dart';
import 'package:vaga_pleno_challenge/modules/edit/domain/usecases/remove_product/index.dart';

import '../../../../app/widgets/button/index.dart';
import '../../../../app/widgets/input/index.dart';
import '../../../../features/products/item/index.dart';
import '../../../modules_index.dart';

class EditPage extends GetView<EditController> {
  EditPage({Key? key}) : super(key: key);

  final ProductItem item = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final h = Get.height / 100;
    final w = Get.width / 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Editar Produto'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            MainInput(
              "Título",
              prefix: item.title,
              txtController: controller.titleEC,
              txtInputType: TextInputType.text,
            ),
            SizedBox(height: 20),
            MainInput(
              "Tipo",
              prefix: item.type,
              txtController: controller.typeEC,
              txtInputType: TextInputType.text,
            ),
            SizedBox(height: 20),
            MainInput(
              "Preço",
              prefix: item.price.toString(),
              txtController: controller.priceEC,
              txtInputType: TextInputType.number,
            ),
            SizedBox(height: 20),
            MainInput(
              "Descrição",
              prefix: item.description,
              txtController: controller.descriptionEC,
              txtInputType: TextInputType.text,
            ),
            SizedBox(height: 40),
            Obx(() => RatingBar.builder(
                  initialRating: controller.rating.value,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: h * 5,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color(0xFF6558F5),
                  ),
                  onRatingUpdate: (rating) {
                    controller.rating.value = rating;
                  },
                )),
            TextButton(
              onPressed: () {
                controller.repeatForm(item);
              },
              child: Text(
                "Repetir dados",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(
                  child: MainIconButton(
                    Icons.delete,
                    onTap: () async {
                      Popup().boolean(
                        "Remover este Produto",
                        "Você está prestes a remover este produto, tem certeza que deseja continuar?",
                        rigthBtnTxt: "Confirmar",
                        leftOnTap: () {
                          Get.back();
                        },
                        rigthOnTap: () async {
                          await RemoveProduct().remove(item);
                          Get.back();
                          Get.back();
                        },
                      );
                    },
                    bgColor: Colors.red,
                    borderColor: Colors.red[600],
                    iconColor: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    width: w * 65,
                    child: MainButton(
                      "Editar",
                      onTap: () {
                        controller.edit(item);
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
