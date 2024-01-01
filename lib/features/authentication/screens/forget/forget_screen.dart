import 'package:a_store/common/styles/spacing_style.dart';
import 'package:a_store/features/authentication/screens/forget/widgets/forget_form.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/forget_header.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithOutTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Forget Header
              ForgetHeader(),

              /// Forget Form
              ForgetForm()
            ],
          ),
        ),
      ),
    );
  }
}
