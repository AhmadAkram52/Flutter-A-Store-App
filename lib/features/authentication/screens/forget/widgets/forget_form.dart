import 'package:a_store/features/authentication/controllers/forget/forget_controller.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetForm extends StatelessWidget {
  const ForgetForm({super.key});

  @override
  Widget build(BuildContext context) {
    final ForgetController controller = Get.put(ForgetController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: controller.forgetMailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                label: Text(ATexts.email),
              ),
            ),
            const SizedBox(
              height: ASizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.submitMail(),
                child: const Text(ATexts.submit),
              ),
            )
          ],
        ),
      ),
    );
  }
}
