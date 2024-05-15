import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tk_mart/common/widgets/images/tk_circular_image.dart';
import 'package:tk_mart/common/widgets/texts/product_price_text.dart';
import 'package:tk_mart/common/widgets/texts/product_title_text.dart';
import 'package:tk_mart/common/widgets/texts/tk_brand_title_text_with_verified_icon.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/enums.dart';
import 'package:tk_mart/utils/constants/image_strings.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartProductMetaData extends StatelessWidget {
  const TKMartProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {

    final darkMode = TKMartHelperFunctions.isDarkMode(context);
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(

          children: [

            TKMartRoundedContainer(

              radius: TKMartSizes.sm,
              backgroundColor: TKMartColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TKMartSizes.sm, vertical: TKMartSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TKMartColors.black)),

            ),
            
            const SizedBox(width: TKMartSizes.spaceBtwItems),
            Text('₹1400', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TKMartSizes.spaceBtwItems),
            const TKMartProductPriceText(price: '1000', isLarge: true),

          ],
        ),

        const SizedBox(height: TKMartSizes.spaceBtwItems / 1.5),
        const TKMartProductTitleText(title: 'Nike Men\'s Air Zoom Pegasus 33, Rio Teal/White-Midnight Turq-Volt - 9. 5 D(M) US'),
        const SizedBox(height: TKMartSizes.spaceBtwItems / 1.5),
        Row(

          children: [

            const TKMartProductTitleText(title: 'Status'),
            const SizedBox(width: TKMartSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),

          ],
        ),

        const SizedBox(height: TKMartSizes.spaceBtwItems / 1.5),
        Row(

          children: [

            TKMartCircularImage(

              image: TKMartImages.nikeLogo,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TKMartColors.white : TKMartColors.black,

            ),

            const TKMartBrandTitleWithVerifiedIcon(title: 'Nike', brandTextsize: TextSizes.medium),

          ],
        ),
      ],
    );
  }
}
