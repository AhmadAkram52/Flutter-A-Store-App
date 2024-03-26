import 'package:a_store/common/widgets/bars/appbar.dart';
import 'package:a_store/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:a_store/common/widgets/icon/circular_icon.dart';
import 'package:a_store/common/widgets/images/rounded_image.dart';
import 'package:a_store/features/shop/controllers/wishlist/wishlist_controller.dart';
import 'package:a_store/features/shop/models/products/products_data_model.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AProductImageSlider extends StatelessWidget {
  const AProductImageSlider({
    super.key,
    required this.isDark,
    required this.index,
  });

  final bool isDark;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ACurvedEdgeWidget(
      child: Container(
        color: isDark ? AColors.darkerGrey : AColors.light,
        child: Stack(
          children: [
            AAppBar(
              showBackArrow: true,
              action: [
                Obx(() {
                  return ACircularIcon(
                    height: 45,
                    width: 45,
                    onPress: () {
                      WishListController.instance.addToWishList(index);
                    },
                    icon: WishListController.instance.favList.contains(index)
                        ? Iconsax.heart5
                        : Iconsax.heart,
                    iconColor:
                        WishListController.instance.favList.contains(index)
                            ? Colors.red
                            : isDark
                                ? AColors.light
                                : AColors.dark,
                  );
                })
              ],
            ),
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(ASizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(productsList[index].image),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: ASizes.defaultSpace * 1.2,
              left: ASizes.defaultSpace,
              child: SizedBox(
                height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 20,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: ASizes.spaceBtwItems / 5,
                  ),
                  itemBuilder: (_, index) => ARoundedImage(
                    padding: const EdgeInsets.all(ASizes.sm),
                    border: Border.all(color: AColors.primary, width: 2),
                    width: 60,
                    imageUrl: productsList[index].image,
                    backgroundColor: isDark ? AColors.dark : AColors.light,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
