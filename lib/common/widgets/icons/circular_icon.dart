import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartCircularIcon extends StatelessWidget {
  const TKMartCircularIcon({

    super.key,
    this.width,
    this.height,
    this.size = TKMartSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed

  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return Container(

        width: width,
        height: height,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(100),
            color:  backgroundColor != null ? backgroundColor! : dark ? TKMartColors.black.withOpacity(0.9) : TKMartColors.white.withOpacity(0.9),

      ),

      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),

    );
  }
}