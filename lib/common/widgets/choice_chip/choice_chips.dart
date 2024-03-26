import 'package:a_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:a_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AChoiceChip extends StatelessWidget {
  final String label;
  final bool selected;
  final void Function(bool)? onSelected;

  const AChoiceChip({
    super.key,
    required this.label,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final color = AHelperFunctions.getColor(label);
    final isColor = color != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(label),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? Colors.white : null),
        shape: isColor ? const CircleBorder() : null,
        padding: isColor ? EdgeInsets.zero : null,
        labelPadding: isColor ? EdgeInsets.zero : null,
        backgroundColor: isColor ? color : null,
        avatar: isColor
            ? ACircularContainer(
                height: 50,
                width: 50,
                backgroundColor: color,
              )
            : null,
      ),
    );
  }
}
