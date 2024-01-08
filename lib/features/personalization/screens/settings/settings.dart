import 'package:a_store/common/widgets/bars/appbar.dart';
import 'package:a_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:a_store/common/widgets/list_tiles/user_list_tile.dart';
import 'package:a_store/common/widgets/text/section_heading.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  AAppBar(
                    title: Text(
                      ATexts.account,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: AColors.white),
                    ),
                  ),
                  const AUserListTile(),
                  const SizedBox(height: ASizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ASizes.md),
              child: Column(
                children: [
                  const ASectionHeading(
                      headingTitle: ATexts.accountSettings,
                      showActionButton: false),
                  const Column(
                    children: [
                      SizedBox(height: ASizes.spaceBtwItems),
                      ASettingMenuTile(
                          pageTitle: ATexts.myAddresses,
                          subTitle: ATexts.setShoppingDelivery,
                          leadingIcon: Iconsax.safe_home),
                      ASettingMenuTile(
                          pageTitle: ATexts.myOrders,
                          subTitle: ATexts.inProgressOrder,
                          leadingIcon: Iconsax.card_tick),
                      ASettingMenuTile(
                          pageTitle: ATexts.bankAccount,
                          subTitle: ATexts.withdrawBalance,
                          leadingIcon: Iconsax.bank),
                      ASettingMenuTile(
                          pageTitle: ATexts.myCoupons,
                          subTitle: ATexts.listOfDiscount,
                          leadingIcon: Iconsax.discount_shape),
                      ASettingMenuTile(
                          pageTitle: ATexts.notifications,
                          subTitle: ATexts.setAnyKindOfNotification,
                          leadingIcon: Iconsax.notification),
                      ASettingMenuTile(
                          pageTitle: ATexts.accountPrivacy,
                          subTitle: ATexts.manageDataUsing,
                          leadingIcon: Iconsax.shield_security2),
                      SizedBox(height: ASizes.spaceBtwItems),
                    ],
                  ),
                  const ASectionHeading(
                      headingTitle: ATexts.appSettings,
                      showActionButton: false),
                  Column(
                    children: [
                      const SizedBox(height: ASizes.spaceBtwItems),
                      const ASettingMenuTile(
                          pageTitle: ATexts.loadData,
                          subTitle: ATexts.uploadData,
                          leadingIcon: Iconsax.document_upload),
                      ASettingMenuTile(
                        pageTitle: ATexts.geoLocation,
                        subTitle: ATexts.setRecommendations,
                        leadingIcon: Iconsax.location,
                        actionButton:
                            Switch(value: true, onChanged: (value) {}),
                      ),
                      ASettingMenuTile(
                        pageTitle: ATexts.safeMode,
                        subTitle: ATexts.searchResultInSafe,
                        leadingIcon: Iconsax.security_safe,
                        actionButton:
                            Switch(value: false, onChanged: (value) {}),
                      ),
                      ASettingMenuTile(
                        pageTitle: ATexts.hdImageQuality,
                        subTitle: ATexts.setImageQuality,
                        leadingIcon: Iconsax.image,
                        actionButton:
                            Switch(value: false, onChanged: (value) {}),
                      ),
                      const SizedBox(height: ASizes.spaceBtwItems),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(ATexts.logOut),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ASettingMenuTile extends StatelessWidget {
  const ASettingMenuTile({
    super.key,
    required this.pageTitle,
    required this.subTitle,
    this.showActionButton = false,
    this.leadingIcon,
    this.onTap,
    this.actionButton,
  });

  final String pageTitle, subTitle;
  final bool showActionButton;
  final IconData? leadingIcon;
  final VoidCallback? onTap;
  final Widget? actionButton;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        leadingIcon,
        color: AColors.primary,
        size: ASizes.iconLg,
      ),
      title: Text(
        pageTitle,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      trailing: actionButton,
    );
  }
}
