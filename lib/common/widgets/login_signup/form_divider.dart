import 'package:a_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AFormDivider extends StatelessWidget {
  final String title;

  const AFormDivider({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          child: Divider(
            thickness: .5,
            color: AColors.darkGrey,
            indent: 50,
            endIndent: 5,
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const Flexible(
          child: Divider(
            thickness: .5,
            color: AColors.darkGrey,
            indent: 5,
            endIndent: 50,
          ),
        ),
      ],
    );
  }
}
