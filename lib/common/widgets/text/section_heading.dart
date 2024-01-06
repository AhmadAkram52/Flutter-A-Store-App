import 'package:flutter/material.dart';

class ASectionHeading extends StatelessWidget {
  final String headingTitle, buttonTitle;
  final VoidCallback? onPressed;
  final Color? textColor;
  final bool showActionButton;

  const ASectionHeading({
    super.key,
    required this.headingTitle,
    this.onPressed,
    this.buttonTitle = 'View All',
    this.textColor,
    this.showActionButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headingTitle,
          style: Theme.of(context).textTheme.headlineSmall?.apply(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: () => onPressed,
            child: Text(buttonTitle),
          ),
      ],
    );
  }
}
