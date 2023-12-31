import 'package:a_store/features/personalization/screens/settings/settings.dart';
import 'package:a_store/features/shop/screens/home/home.dart';
import 'package:a_store/features/shop/screens/store/store.dart';
import 'package:a_store/features/shop/screens/wishlist/wishlist.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.put(NavigationController());
    return Scaffold(
        bottomNavigationBar: Obx(() {
          return NavigationBar(
            height: ASizes.navBarHeight,
            selectedIndex: controller.selectedIndex.value,
            elevation: 0,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Shop"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "Wishlist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ],
          );
        }),
        body: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ));
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const AStore(),
    const AWishList(),
    const Settings(),
  ];
}
