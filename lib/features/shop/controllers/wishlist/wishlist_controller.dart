import 'package:get/get.dart';

class WishListController extends GetxController {
  static WishListController get instance => Get.find();

  RxList favList = [].obs;

  addToWishList(int index) {
    if (!favList.contains(index)) {
      favList.add(index);
    } else {
      favList.remove(index);
    }
  }
}
