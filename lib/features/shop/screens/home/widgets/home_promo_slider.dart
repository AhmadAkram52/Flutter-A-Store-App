import 'package:a_store/common/widgets/images/rounded_image.dart';
import 'package:a_store/features/shop/controllers/home_controller.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePromoSlider extends StatelessWidget {
  const HomePromoSlider({
    super.key,
    required this.banners,
  });

  final List banners;

  @override
  Widget build(BuildContext context) {
    final AHomeController carouselController = Get.put(AHomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  carouselController.updateIndicator(index)),
          items: banners.map((url) => ARoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: ASizes.spaceBtwItems),
        Obx(() {
          return AnimatedSmoothIndicator(
            count: banners.length,
            effect: const ExpandingDotsEffect(dotHeight: 6),
            activeIndex: carouselController.index.value,
          );
        }),
      ],
    );
  }
}
