import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

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
