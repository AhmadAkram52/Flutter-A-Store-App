import 'package:a_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:a_store/features/authentication/screens/onboarding/widgets/onboarding_next_btn.dart';
import 'package:a_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:a_store/features/authentication/screens/onboarding/widgets/onboarding_skip_btn.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/onboarding_dot_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: AImages.onBoardingImage1,
                  title: ATexts.onBoardingTitle1,
                  subTitle: ATexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: AImages.onBoardingImage2,
                  title: ATexts.onBoardingTitle2,
                  subTitle: ATexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: AImages.onBoardingImage3,
                  title: ATexts.onBoardingTitle3,
                  subTitle: ATexts.onBoardingSubTitle3),
            ],
          ),
          const SkipButton(),
          const PageIndicator(),
          const OnBoardingNextBtn(),
        ],
      ),
    );
  }
}
