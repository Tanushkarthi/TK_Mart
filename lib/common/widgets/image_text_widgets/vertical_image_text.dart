import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartVerticalImageText extends StatelessWidget {

  const TKMartVerticalImageText({

    super.key,
    required this.image,
    required this.title,
    this.textColor = TKMartColors.white,
    this.backgroundColor = TKMartColors.white,
    this.onTap,

  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return GestureDetector(

      onTap: onTap,
      child: Padding(

        padding: const EdgeInsets.only(right: TKMartSizes.spaceBtwItems),
        child: Column(

          children: [

            Container(

              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TKMartSizes.sm),
              decoration: BoxDecoration(

                color: backgroundColor ?? (dark ? TKMartColors.black : TKMartColors.white),
                borderRadius: BorderRadius.circular(100),

              ),

              child: Center(

                child: Image(image: AssetImage(image),fit: BoxFit.cover, color: TKMartColors.dark),
              ),
            ),

            const SizedBox(height: TKMartSizes.spaceBtwItems / 2),
            SizedBox(

              width: 55,
              child: Text(

                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,

              ),
            ),
          ],
        ),
      ),
    );
  }
}