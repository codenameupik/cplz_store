import 'package:cplz_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cplz_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:cplz_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CPrimaryHeaderContainer extends StatelessWidget {
  const CPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CCurvedEdgesWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: CColors.primary,
          //padding: const EdgeInsets.only(bottom: 0),

          child: Stack(
            children: [
              // Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: CCircularContainer(
                    backgroundColor: CColors.textWhite.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CCircularContainer(
                    backgroundColor: CColors.textWhite.withOpacity(0.1)),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
