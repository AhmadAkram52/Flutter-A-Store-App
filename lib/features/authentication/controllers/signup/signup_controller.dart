import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// SignUp Screen TextField Controllers
  final Rx<TextEditingController> firstNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> lastNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> userNameController =
      TextEditingController().obs;
  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> phoneController = TextEditingController().obs;
  final Rx<TextEditingController> passwordController =
      TextEditingController().obs;

  RxBool hidePassword = true.obs;
  RxBool isCheck = false.obs;

  void showPassword() {
    if (hidePassword.value) {
      hidePassword.value = false;
    } else {
      hidePassword.value = true;
    }
  }

  markCheck(bool value) {
    if (value) {
      isCheck.value = true;
    } else {
      isCheck.value = false;
    }
  }

  void createAccount() {
    Get.toNamed('/emailVerify',
        parameters: {'mail': emailController.value.text.toString()});
  }
}
