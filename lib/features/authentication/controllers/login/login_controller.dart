import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool hidePassword = true.obs;
  RxBool rememberCheck = false.obs;

  void showPassword() {
    if (hidePassword.value) {
      hidePassword.value = false;
    } else {
      hidePassword.value = true;
    }
  }

  void markRemember(value) {
    if (!value) {
      rememberCheck.value = false;
    } else {
      rememberCheck.value = true;
    }
  }
}
