import 'package:a_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.put(SignupController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            const Row(
              children: [
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      label: Text(ATexts.firstName)),
                )),
                SizedBox(
                  width: ASizes.spaceBtwInputFields,
                ),
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      label: Text(ATexts.lastName)),
                )),
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                label: Text(ATexts.username),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct), label: Text(ATexts.email)),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                label: Text(ATexts.phoneNo),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            Obx(() {
              return TextField(
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    label: const Text(ATexts.password),
                    suffixIcon: IconButton(
                      onPressed: controller.showPassword,
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye),
                    )),
              );
            }),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Row(
                  children: [
                    Text("${ATexts.iAgreeTo} ",
                        style: Theme.of(context).textTheme.labelLarge),
                    Text(
                      ATexts.privacyPolicy,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(textBaseline: TextBaseline.alphabetic),
                    ),
                    Text(" ${ATexts.and} ",
                        style: Theme.of(context).textTheme.labelLarge),
                    Text(
                      ATexts.termsOfUse,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(decorationStyle: TextDecorationStyle.solid),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: controller.createAccount,
                child: const Text(ATexts.createAccount),
              ),
            )
          ],
        ),
      ),
    );
  }
}
