import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tk_mart/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:tk_mart/utils/constants/colors.dart';

class TKMartPrimaryHeaderContainer extends StatelessWidget {

  const TKMartPrimaryHeaderContainer({

    super.key,
    required this.child,

  });

  final Widget child;

  @override
  Widget build(BuildContext context) {

    return TKMartCurvedEdgeWidget(

      child: Container(

        color: TKMartColors.primary,
        child: Stack(

          children: [

            Positioned(top: -150, right: -250 ,child: TKMartRoundedContainer(backgroundColor: TKMartColors.textWhite.withOpacity(0.1))),
            Positioned(top: 100, right: -300 ,child: TKMartRoundedContainer(backgroundColor: TKMartColors.textWhite.withOpacity(0.1))),
            child,

          ],
        ),
      ),
    );
  }
}