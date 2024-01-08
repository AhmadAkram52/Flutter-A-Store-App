import 'package:get/get.dart';

class WishListController extends GetxController {
  static WishListController get instance => Get.find();

  // Rx<List<ProductsDataModel>> favList = Rx<List<ProductsDataModel>>([]);
  // addToWishList(ProductsDataModel product) {
  //   if (!favList.value.contains(product)) {
  //     favList.value.add(product);
  //     print('add');
  //   } else {
  //     favList.value.remove(product);
  //     print('remove');
  //   }
  // }
  RxList favList = [].obs;

  addToWishList(int index) {
    if (!favList.contains(index)) {
      favList.add(index);
      print('add');
    } else {
      favList.remove(index);
      print('remove');
    }
  }
}
