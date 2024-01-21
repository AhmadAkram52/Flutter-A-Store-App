import 'package:a_store/common/styles/shadow_style.dart';
import 'package:a_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:a_store/common/widgets/icon/circular_icon.dart';
import 'package:a_store/common/widgets/images/rounded_image.dart';
import 'package:a_store/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:a_store/common/widgets/text/product_price_text.dart';
import 'package:a_store/common/widgets/text/product_title_text.dart';
import 'package:a_store/features/shop/controllers/wishlist/wishlist_controller.dart';
import 'package:a_store/features/shop/models/products/products_data_model.dart';
import 'package:a_store/features/shop/screens/product_details/product_details.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AProductCardVertical extends StatelessWidget {
  const AProductCardVertical(
      {super.key, required this.list, required this.index});

  final List<ProductsDataModel> list;
  final int index;

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    final wishlistController = Get.put(WishListController());
    return InkWell(
      onTap: () => Get.to(ProductDetails(index: index)),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [AShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ASizes.productImageRadius),
          color: isDark ? AColors.darkerGrey : AColors.grey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ARoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(ASizes.sm),
              backgroundColor: isDark ? AColors.dark : AColors.white,
              child: Stack(
                children: [
                  Center(
                    child: ARoundedImage(
                      imageUrl: list[index].image,
                      height: ASizes.productImageSize,
                      backgroundColor: isDark ? AColors.dark : AColors.white,
                      applyImageRadius: true,
                    ),
                  ),
                  Positioned(
                    top: 05,
                    left: 05,
                    child: ARoundedContainer(
                      padding: const EdgeInsets.symmetric(
                          horizontal: ASizes.sm, vertical: ASizes.xs),
                      backgroundColor: AColors.secondary.withOpacity(.8),
                      radius: ASizes.sm,
                      child: Center(
                        child: Text(
                          '${list[index].off}%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.apply(color: AColors.black),
                        ),
                      ),
                    ),
                  ),
                  Obx(() {
                    return Positioned(
                      top: 0,
                      right: 0,
                      child: ACircularIcon(
                        onPress: () {
                          wishlistController.addToWishList(index);
                        },
                        icon: wishlistController.favList.contains(index)
                            ? Iconsax.heart5
                            : Iconsax.heart,
                        iconColor: wishlistController.favList.contains(index)
                            ? Colors.red
                            : isDark
                                ? AColors.light
                                : AColors.dark,
                      ),
                    );
                  }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: ASizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: ASizes.spaceBtwItems / 2),
                  AProductTitle(
                    title: list[index].title,
                    textSmall: true,
                    maxLine: 2,
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems / 2),
                  ABrandNameWithVerifyIcon(title: list[index].brandName),
                  const SizedBox(height: ASizes.spaceBtwItems / 2),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: ASizes.sm),
                  child: AProductPriceText(
                    price: '${list[index].price}  $index',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: AColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(ASizes.cardRadiusMd),
                        bottomRight: Radius.circular(ASizes.productImageRadius),
                      )),
                  child: const SizedBox(
                      height: ASizes.iconLg * 1.2,
                      width: ASizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(Iconsax.add, color: AColors.white))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
