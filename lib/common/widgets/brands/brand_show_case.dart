import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tk_mart/common/widgets/products/products_cards/tab_bar_card.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartBrandShowCase extends StatelessWidget {
  const TKMartBrandShowCase({

    super.key,
    required this.image,
    required this.titleName,
    required this.titleCount,
    required this.image1,
    required this.image2,
    required this.image3,

  });

  final String image;
  final String titleName;
  final String titleCount;
  final String image1;
  final String image2;
  final String image3;

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return TKMartRoundedContainer(

      showBorder: true,
      borderColor: TKMartColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TKMartSizes.md),
      margin: const EdgeInsets.only(bottom: TKMartSizes.spaceBtwItems),
      child: Column(

        children: [

          TKMartTabBarCard(showBorder: false, image: image, titleName: titleName, titleCount: titleCount),
          const SizedBox(height: TKMartSizes.spaceBtwItems/2),
          Row(

            children: [

              Expanded(

                child: TKMartRoundedContainer(

                  height: 100,
                  backgroundColor: dark ? TKMartColors.darkerGrey : TKMartColors.light,
                  margin: const EdgeInsets.only(right: TKMartSizes.sm),
                  padding: const EdgeInsets.all(TKMartSizes.md),
                  child: Image(fit: BoxFit.contain, image: AssetImage(image1)),

                ),
              ),

              Expanded(

                child: TKMartRoundedContainer(

                  height: 100,
                  backgroundColor: dark ? TKMartColors.darkerGrey : TKMartColors.light,
                  margin: const EdgeInsets.only(right: TKMartSizes.sm),
                  padding: const EdgeInsets.all(TKMartSizes.md),
                  child: Image(fit: BoxFit.contain, image: AssetImage(image2)),

                ),
              ),

              Expanded(

                child: TKMartRoundedContainer(

                  height: 100,
                  backgroundColor: dark ? TKMartColors.darkerGrey : TKMartColors.light,
                  margin: const EdgeInsets.only(right: TKMartSizes.sm),
                  padding: const EdgeInsets.all(TKMartSizes.md),
                  child: Image(fit: BoxFit.contain, image: AssetImage(image3)),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}