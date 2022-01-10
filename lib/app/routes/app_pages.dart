import 'package:get/get.dart';

import '../../modules/modules_index.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomePage(),
      binding: HomeBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.edit,
      page: () => EditPage(),
      binding: EditBinding(),
      transition: Transition.cupertino,
    ),
  ];
}
