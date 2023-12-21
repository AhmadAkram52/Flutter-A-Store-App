import 'package:a_store/common/styles/spacing_style.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.highlight_remove))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithOutTop,
          child: Column(
            children: [
              const Image(
                image: AssetImage(AImages.onBoardingImage1),
              ),
              Text(
                ATexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
