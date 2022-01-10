import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/index.dart';
import '../routes/index.dart';
import 'index.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: AppCoreBinding(),
      title: BaseApp.title,
      initialRoute: Routes.home,
      getPages: AppPages.routes,
    );
  }
}
