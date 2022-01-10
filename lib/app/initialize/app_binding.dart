import 'package:get/get.dart';

import 'index.dart';

class AppCoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AppController>(AppController(), permanent: true);
  }
}
