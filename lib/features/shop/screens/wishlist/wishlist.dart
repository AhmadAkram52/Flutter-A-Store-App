import 'package:a_store/common/styles/spacing_style.dart';
import 'package:a_store/common/widgets/bars/appbar.dart';
import 'package:a_store/common/widgets/icon/circular_icon.dart';
import 'package:a_store/common/widgets/layout/gridview_layout.dart';
import 'package:a_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:a_store/features/shop/controllers/wishlist/wishlist_controller.dart';
import 'package:a_store/features/shop/models/products/products_data_model.dart';
import 'package:a_store/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AWishList extends StatelessWidget {
  const AWishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AAppBar(
        title: Text(
          "WishList",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          IconButton(
            icon: const ACircularIcon(icon: Icons.add),
            onPressed: () {
              NavigationController.instance.selectedIndex.value = 0;
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithOutTop,
          child: Obx(() {
            return AGridViewLayout(
                itemCounter: WishListController.instance.favList.length,
                itemBuilder: (context, i) => AProductCardVertical(
                    list: productsList,
                    index: WishListController.instance.favList[i]));
          }),
        ),
      ),
    );
  }
}
