import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Popup {
  void boolean(
    String title,
    String msg, {
    String buttonText = "Fechar",
    String leftBtnTxt = "Cancelar",
    AlertType alertType = AlertType.none,
    required String rigthBtnTxt,
    required VoidCallback leftOnTap,
    required VoidCallback rigthOnTap,
  }) {
    Alert(
      context: Get.context!,
      type: alertType,
      title: title.toUpperCase(),
      desc: msg,
      style: AlertStyle(
        backgroundColor: Colors.white,
        titleStyle: TextStyle(
          fontSize: 25,
          color: const Color(0xFF272B2E),
          fontWeight: FontWeight.bold,
        ),
      ),
      buttons: [
        DialogButton(
          child: Text(
            leftBtnTxt,
            style: TextStyle(color: Colors.white),
          ),
          color: const Color(0xFF1f61dc),
          radius: const BorderRadius.all(Radius.circular(10)),
          onPressed: leftOnTap,
          width: 200,
        ),
        DialogButton(
          child: Text(
            rigthBtnTxt,
            style: TextStyle(color: Colors.white),
          ),
          color: const Color(0xFF272B2E),
          radius: const BorderRadius.all(Radius.circular(10)),
          onPressed: rigthOnTap,
          width: 200,
        )
      ],
    ).show();
  }

  void closeButton(String title, String msg,
      {String buttonText = "Fechar", AlertType alertType = AlertType.none}) {
    Alert(
      context: Get.context!,
      type: alertType,
      title: title.toUpperCase(),
      onWillPopActive: true,
      desc: msg,
      style: AlertStyle(
        backgroundColor: Colors.white,
        titleStyle: TextStyle(
          fontSize: 25,
          color: const Color(0xFF272B2E),
          fontWeight: FontWeight.bold,
        ),
      ),
      buttons: [
        DialogButton(
          child: Text(
            "Fechar",
            style: TextStyle(color: Colors.white),
            maxLines: 1,
          ),
          color: const Color(0xFF272B2E),
          radius: const BorderRadius.all(Radius.circular(10)),
          onPressed: () => Get.back(),
          width: 200,
        )
      ],
    ).show();
  }
}
