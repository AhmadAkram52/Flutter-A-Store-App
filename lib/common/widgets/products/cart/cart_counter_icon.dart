import 'package:a_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ACartCounterIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? iconColor;

  const ACartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor = AColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            right: 0,
            child: Container(
              height: 18,
              width: 18,
              decoration: const BoxDecoration(
                color: AColors.black,
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: Text(
                '1',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(color: AColors.white, fontSizeFactor: .9),
              )),
            )),
        IconButton(
          onPressed: () => onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
      ],
    );
  }
}
