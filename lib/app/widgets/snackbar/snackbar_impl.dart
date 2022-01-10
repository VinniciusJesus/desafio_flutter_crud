import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SnackbarImpl implements ISnackbar {
  @override
  void error(String msg) {
    Get.snackbar(
      "Erro ao Continuar...",
      msg,
      duration: const Duration(seconds: 4),
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.black,
      backgroundColor: Color(0xFFeb3b5a),
    );
  }

  @override
  void sucess(String msg) {
    // TODO: implement sucess
  }
}
