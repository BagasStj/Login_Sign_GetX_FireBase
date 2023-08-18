import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  TextEditingController emailC = TextEditingController(text: "");
  TextEditingController passwordC = TextEditingController(text: "");

  @override
  void onClose() {
    emailC.dispose();
    passwordC.dispose();
    super.onClose();
  }
}
