import 'package:a_store/features/authentication/controllers/forget/forget_controller.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: isDark ? AColors.light : AColors.dark,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: ASizes.sm, top: ASizes.md),
            child: IconButton(
                onPressed: () {
                  Get.offAllNamed('/login');
                },
                icon: const Icon(CupertinoIcons.clear)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage(AImages.deliveredEmailIllustration),
                width: AHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),
              Text(
                ATexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                ForgetController.instance.forgetMailController.text,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                ATexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed('/login');
                  },
                  child: const Text(ATexts.done),
                ),
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(ATexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
