import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  RxBool hidePassword = true.obs;

  void showPassword() {
    if (hidePassword.value) {
      hidePassword.value = false;
    } else {
      hidePassword.value = true;
    }
  }

  void createAccount() {
    Get.toNamed('/emailVerification');
  }
}
