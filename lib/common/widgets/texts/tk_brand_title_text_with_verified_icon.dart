import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/common/widgets/texts/tk_brand_title_text.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/enums.dart';
import 'package:tk_mart/utils/constants/sizes.dart';

class TKMartBrandTitleWithVerifiedIcon extends StatelessWidget {

  const TKMartBrandTitleWithVerifiedIcon({

    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = TKMartColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextsize = TextSizes.small,

  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextsize;

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisSize: MainAxisSize.min,
      children: [

        Flexible(

          child: TKBrandTitleText(

            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextsize,

          ),
        ),
        const SizedBox(width: TKMartSizes.xs),
        const Icon(Iconsax.verify5, color: TKMartColors.primary, size: TKMartSizes.iconXs),

      ],
    );
  }
}