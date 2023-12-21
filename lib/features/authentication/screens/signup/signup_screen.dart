import 'package:a_store/common/styles/spacing_style.dart';
import 'package:a_store/common/widgets/login_signup/form_divider.dart';
import 'package:a_store/common/widgets/login_signup/social_buttons.dart';
import 'package:a_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: isDark ? AColors.light : AColors.dark,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithOutTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///SignUp Header
              Text(
                ATexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.start,
              ),

              /// SignUp Form
              const SignUpForm(),

              /// SignUp Divider
              AFormDivider(
                title: ATexts.orSignUpWith.capitalize!,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),

              /// SignUp Social Buttons
              const ASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
