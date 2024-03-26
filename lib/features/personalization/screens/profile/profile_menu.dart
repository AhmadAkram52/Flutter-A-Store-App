import 'package:a_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AProfileMenu extends StatelessWidget {
  const AProfileMenu({
    super.key,
    required this.leadingText,
    required this.title,
    this.onPress,
    this.icon,
  });

  final String leadingText;
  final String title;
  final VoidCallback? onPress;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwItems / 4),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              leadingText,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          // const SizedBox(width: ASizes.defaultSpace),
          Expanded(
            flex: 5,
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(child: IconButton(onPressed: onPress, icon: Icon(icon))),
        ],
      ),
    );
  }
}
