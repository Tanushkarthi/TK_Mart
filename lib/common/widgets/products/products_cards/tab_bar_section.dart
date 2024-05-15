import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/common/styles/shadows.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tk_mart/common/widgets/icons/circular_icon.dart';
import 'package:tk_mart/common/widgets/images/tk_rounded_image.dart';
import 'package:tk_mart/common/widgets/texts/product_price_text.dart';
import 'package:tk_mart/common/widgets/texts/product_title_text.dart';
import 'package:tk_mart/common/widgets/texts/tk_brand_title_text_with_verified_icon.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartCategorySection extends StatelessWidget {

  const TKMartCategorySection({

    super.key,
    required this.imageUrl,
    required this.discount,
    required this.title,
    required this.brand,
    required this.price,

  });

  final String imageUrl;
  final String discount;
  final String title;
  final String brand;
  final String price;

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return GestureDetector(

      onTap: (){},
      child: Container(

        width: 380,
        height: 300,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(

          boxShadow: [TKMartShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TKMartSizes.productImageRadius),
          color: dark ? TKMartColors.darkerGrey : TKMartColors.white,

        ),

        child: Column(

          children: [

            TKMartRoundedContainer(

              padding: const EdgeInsets.all(TKMartSizes.sm),
              backgroundColor: dark ? TKMartColors.dark : TKMartColors.light,
              child: Stack(

                children: [

                  TKMartRoundedImages(imageUrl:imageUrl, applyImageRadius: true,height: 150,width: 150,),
                  Positioned(

                    top: 12,
                    child: TKMartRoundedContainer(

                      radius: TKMartSizes.sm,
                      backgroundColor: TKMartColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TKMartSizes.sm, vertical: TKMartSizes.xs),
                      child: Text(discount, style: Theme.of(context).textTheme.labelLarge!.apply(color: TKMartColors.black)),

                    ),
                  ),

                  const Positioned(

                      top: 0,
                      right: 0,
                      child: TKMartCircularIcon(icon: Iconsax.heart5, color: Colors.red)

                  )
                ],
              ),
            ),

            const SizedBox(height: TKMartSizes.spaceBtwItems / 2),
            Padding(

              padding: const EdgeInsets.only(left: TKMartSizes.sm),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  TKMartProductTitleText(title: title,smallSize: true),
                  const SizedBox(height: TKMartSizes.spaceBtwItems / 2,),
                  TKMartBrandTitleWithVerifiedIcon(title:brand),

                ],
              ),
            ),

            const SizedBox(height: TKMartSizes.spaceBtwItems),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(

                  padding: const EdgeInsets.only(left: TKMartSizes.sm),
                  child: TKMartProductPriceText(price: price),

                ),

                Container(

                  decoration: const BoxDecoration(

                      color: TKMartColors.dark,
                      borderRadius: BorderRadius.only(

                        topLeft: Radius.circular(TKMartSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TKMartSizes.productImageRadius),

                      )
                  ),

                  child: const SizedBox(

                    width: TKMartSizes.iconLg * 1.2,
                    height: TKMartSizes.iconLg * 1.2,
                    child: Center(

                      child: Center(child: Icon(Iconsax.add, color: TKMartColors.white)),

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}