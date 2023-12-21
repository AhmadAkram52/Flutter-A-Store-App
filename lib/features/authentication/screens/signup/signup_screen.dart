import 'package:a_store/common/styles/spacing_style.dart';
import 'package:a_store/common/widgets/login_signup/form_divider.dart';
import 'package:a_store/common/widgets/login_signup/social_buttons.dart';
import 'package:a_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithOutTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///SignUp Header
              Text(
                ATexts.signupTitle,
                style: Theme.of(context).textTheme.headlineSmall,
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
