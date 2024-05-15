import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/device/device_utility.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartSearchContainer extends StatelessWidget {
  const TKMartSearchContainer({

    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: TKMartSizes.defaultSpace),

  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return GestureDetector(

      onTap: onTap,
      child: Padding(

        padding: padding,
        child: Container(

          width: TKMartDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TKMartSizes.md),
          decoration: BoxDecoration(

            color: showBackground ? dark ? TKMartColors.dark : TKMartColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(TKMartSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TKMartColors.primary) : null,

          ),

          child: Row(

            children: [

              Icon(icon, color: TKMartColors.primary),
              const SizedBox(width: TKMartSizes.spaceBtwItems),
              Text(text,style: Theme.of(context).textTheme.bodySmall),

            ],
          ),
        ),
      ),
    );
  }
}