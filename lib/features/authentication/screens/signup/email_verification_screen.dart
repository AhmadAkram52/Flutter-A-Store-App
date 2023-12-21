import 'package:a_store/common/styles/spacing_style.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerifyScreen extends StatefulWidget {
  const EmailVerifyScreen({super.key});

  @override
  State<EmailVerifyScreen> createState() => _EmailVerifyScreenState();
}

class _EmailVerifyScreenState extends State<EmailVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAllNamed('/login'),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithOutTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(AImages.deliveredEmailIllustration),
              ),
              const SizedBox(
                height: ASizes.spaceBtwSections,
              ),
              Text(
                ATexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                Get.parameters['mail']!,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                ATexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.toNamed('/signUpSuccess'),
                    child: const Text(ATexts.aContinue)),
              ),
              const SizedBox(height: ASizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(ATexts.resendEmail)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
