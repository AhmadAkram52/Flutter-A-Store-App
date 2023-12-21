import 'package:a_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SignupController signUpCtrl = Get.put(SignupController());
    final isDark = AHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                    child: TextField(
                  controller: signUpCtrl.firstNameController.value,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      label: Text(ATexts.firstName)),
                )),
                const SizedBox(
                  width: ASizes.spaceBtwInputFields,
                ),
                Flexible(
                    child: TextField(
                  controller: signUpCtrl.lastNameController.value,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      label: Text(ATexts.lastName)),
                )),
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            TextField(
              controller: signUpCtrl.userNameController.value,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                label: Text(ATexts.username),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            TextField(
              controller: signUpCtrl.emailController.value,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct), label: Text(ATexts.email)),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            TextField(
              controller: signUpCtrl.phoneController.value,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                label: Text(ATexts.phoneNo),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            Obx(() {
              return TextField(
                controller: signUpCtrl.passwordController.value,
                obscureText: signUpCtrl.hidePassword.value,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    label: const Text(ATexts.password),
                    suffixIcon: IconButton(
                      onPressed: signUpCtrl.showPassword,
                      icon: Icon(signUpCtrl.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye),
                    )),
              );
            }),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            Row(
              children: [
                SizedBox(
                  height: ASizes.defaultSpace,
                  width: ASizes.defaultSpace,
                  child: Obx(() {
                    return Checkbox(
                        value: signUpCtrl.isCheck.value,
                        onChanged: (value) => signUpCtrl.markCheck(value!));
                  }),
                ),
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                        text: "${ATexts.iAgreeTo} ",
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: ATexts.privacyPolicy,
                      style: Theme.of(context).textTheme.labelLarge?.apply(
                            color: isDark ? AColors.light : AColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                isDark ? AColors.light : AColors.primary,
                          ),
                    ),
                    TextSpan(
                        text: " ${ATexts.and} ",
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: ATexts.termsOfUse,
                      style: Theme.of(context).textTheme.labelLarge!.apply(
                            color: isDark ? AColors.light : AColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                isDark ? AColors.light : AColors.primary,
                          ),
                    ),
                  ],
                ))
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: signUpCtrl.createAccount,
                child: const Text(ATexts.createAccount),
              ),
            )
          ],
        ),
      ),
    );
  }
}
