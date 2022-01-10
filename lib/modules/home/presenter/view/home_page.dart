import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../features/products/products_service/index.dart';

import '../controller/index.dart';
import '../widgets/index.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  final ProductsService _productsService = Get.find();

  @override
  Widget build(BuildContext context) {
    final h = Get.height / 100;
    final w = Get.width / 100;

    return Scaffold(
      body: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 60),
              SizedBox(
                  height: h * 85,
                  child: Obx(
                    () => ListView.builder(
                      itemCount: _productsService.productsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = _productsService.productsList[index];
                        return Column(
                          children: [
                            CardItem(
                              item: item,
                            ),
                            SizedBox(height: 10),
                          ],
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
