import 'package:a_store/common/styles/spacing_style.dart';
import 'package:a_store/features/authentication/controllers/forget/forget_controller.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetController controller = Get.put(ForgetController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: ASizes.spaceBtwItems),
            child: IconButton(
              icon: const Icon(CupertinoIcons.clear),
              onPressed: () {
                Get.offAllNamed('/login');
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithOutTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ATexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: ASizes.spaceBtwItems,
              ),
              Text(
                ATexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              ForgetForm(controller: controller)
            ],
          ),
        ),
      ),
    );
  }
}
