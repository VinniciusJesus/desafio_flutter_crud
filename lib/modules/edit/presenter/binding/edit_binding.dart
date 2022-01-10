import 'package:get/get.dart';

import '../controller/index.dart';

class EditBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EditController());
  }
}
