import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ARatingProgressIndicator extends StatelessWidget {
  const ARatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: ADeviceUtils.getScreenWidth(context) * .5,
            child: LinearProgressIndicator(
              value: value,
              backgroundColor: AColors.grey,
              borderRadius: BorderRadius.circular(7),
              minHeight: 10,
              valueColor: const AlwaysStoppedAnimation(AColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
