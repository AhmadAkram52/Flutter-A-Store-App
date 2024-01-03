import 'package:a_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:a_store/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  final Widget child;

  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ACurvedEdgeWidget(
      child: Container(
        color: AColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: ACircularContainer(
                backgroundColor: AColors.textWhite.withOpacity(.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: ACircularContainer(
                backgroundColor: AColors.textWhite.withOpacity(.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
