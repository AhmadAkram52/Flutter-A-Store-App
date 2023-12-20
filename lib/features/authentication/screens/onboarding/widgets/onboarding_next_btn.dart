import 'package:a_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/device/device_utility.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: ADeviceUtils.getBottomNavigationBarHeight() + 10,
      right: ASizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? AColors.primary : AColors.dark),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
