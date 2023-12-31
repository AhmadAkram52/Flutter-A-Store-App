import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgetController extends GetxController {
  static ForgetController get instance => Get.find();

  final TextEditingController forgetMailController = TextEditingController();

  void submitMail() {
    Get.toNamed('/reset');
  }
}
