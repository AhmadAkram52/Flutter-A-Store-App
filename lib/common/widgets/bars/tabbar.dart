import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/device/device_utility.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ATabBar extends StatelessWidget implements PreferredSizeWidget {
  const ATabBar({
    super.key,
    required this.tabs,
    this.backgroundColor,
  });

  final List<Widget> tabs;
  final Color? backgroundColor;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(ADeviceUtils.getAppBarHeight());

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return Material(
      color: backgroundColor ?? (isDark ? AColors.black : AColors.white),
      child: TabBar(
          isScrollable: true,
          unselectedLabelColor: AColors.darkGrey,
          labelColor: isDark ? AColors.white : AColors.black,
          labelStyle: Theme.of(context).textTheme.titleLarge,
          indicator: const BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 5, color: AColors.primary)),
          ),
          indicatorColor: AColors.primary,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: tabs),
    );
  }
}
