import 'package:flutter/material.dart';

class AProductTitle extends StatelessWidget {
  const AProductTitle({
    super.key,
    required this.title,
    this.textSmall = false,
    this.maxLine = 2,
    this.align = TextAlign.left,
  });

  final String title;
  final bool textSmall;
  final int maxLine;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textSmall
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      textAlign: align,
    );
  }
}
