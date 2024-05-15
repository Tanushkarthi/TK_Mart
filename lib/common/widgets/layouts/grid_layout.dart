import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/sizes.dart';

class TKMartGridLayout extends StatelessWidget {

  const TKMartGridLayout({

    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 290,

  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {

    return GridView.builder(

      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 2,
          mainAxisSpacing: TKMartSizes.gridViewSpacing,
          crossAxisSpacing: TKMartSizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent,

      ),

      itemBuilder: itemBuilder,

    );
  }
}