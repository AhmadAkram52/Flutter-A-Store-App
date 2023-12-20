import 'package:a_store/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  RxInt currentPage = 0.obs;

  void updatePageIndicator(index) => currentPage.value = index;

  void dotNavigationClick(index) {
    currentPage.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPage.value == 2) {
      Get.offAll(const LoginPage());
    } else {
      currentPage.value++;
      pageController.jumpToPage(currentPage.toInt());
    }
  }

  void skipPage() {
    Get.offAll(const LoginPage());
  }
}
