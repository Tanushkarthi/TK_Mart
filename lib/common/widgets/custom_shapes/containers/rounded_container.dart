import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';

class TKMartRoundedContainer extends StatelessWidget {
  const TKMartRoundedContainer({

    super.key,
    this.width,
    this.height,
    this.radius = TKMartSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = TKMartColors.borderPrimary,
    this.backgroundColor = TKMartColors.white,
    this.padding,
    this.margin,

  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {

    return Container(

      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
          border: showBorder ? Border.all(color: borderColor) : null

      ),

      child: child,

    );
  }
}