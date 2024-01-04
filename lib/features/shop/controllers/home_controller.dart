import 'package:get/get.dart';

class AHomeController extends GetxController {
  late final RxInt index = 0.obs;

  void updateIndicator(int i) {
    index.value = i;
  }
}
