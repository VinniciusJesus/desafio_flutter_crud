import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    final h = Get.height / 100;
    final w = Get.width / 100;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        width: w * 30,
        height: h * 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("assets/images/" + url)),
        ),
      ),
    );
  }
}
