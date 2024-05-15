import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class TKMartCurvedEdgeWidget extends StatelessWidget {

  const TKMartCurvedEdgeWidget({

    super.key,
    this.child,

  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {

    return ClipPath(

      clipper: TKMartCustomCurvedEdges(),
      child: child,

    );
  }
}