import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tk_mart/common/widgets/images/tk_circular_image.dart';
import 'package:tk_mart/common/widgets/texts/tk_brand_title_text_with_verified_icon.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/enums.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartTabBarCard extends StatelessWidget {

  const TKMartTabBarCard({

    super.key,
    this.onTap,
    required this.showBorder,
    required this.image,
    required this.titleName,
    required this.titleCount,

  });

  final bool showBorder;
  final void Function()? onTap;
  final String image;
  final String titleName;
  final String titleCount;

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return GestureDetector(

      onTap: onTap,
      child: TKMartRoundedContainer(

        padding: const EdgeInsets.all(TKMartSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(

          children: [

            Flexible(

              child: TKMartCircularImage(

                isNetworkImage: false,
                image: image,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? TKMartColors.white : TKMartColors.dark,

              ),
            ),

            const SizedBox(width: TKMartSizes.spaceBtwItems / 2),
            Expanded(

              child: Column(

                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  TKMartBrandTitleWithVerifiedIcon(title: titleName, brandTextsize: TextSizes.large),
                  const SizedBox(height: TKMartSizes.spaceBtwItems / 2),
                  Text(

                    titleCount,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,

                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}