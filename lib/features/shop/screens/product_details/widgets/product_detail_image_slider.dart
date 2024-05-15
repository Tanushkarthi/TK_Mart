import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/common/widgets/appbar/appbar.dart';
import 'package:tk_mart/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:tk_mart/common/widgets/icons/circular_icon.dart';
import 'package:tk_mart/common/widgets/images/tk_rounded_image.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/image_strings.dart';
import 'package:tk_mart/utils/constants/lists.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';


class TKMartProductImageSlider extends StatelessWidget {
  const TKMartProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return TKMartCurvedEdgeWidget(

      child: Container(

        color: dark ? TKMartColors.darkerGrey : TKMartColors.light,
        child: Stack(

          children: [

            const SizedBox(

              height: 400,
              child: Padding(

                padding: EdgeInsets.all(TKMartSizes.productImageRadius * 2),
                child: Center(child: Image(image: AssetImage(TKMartImages.productImage1))),

              ),
            ),

            Positioned(

              right: 0,
              bottom: 30,
              left: TKMartSizes.defaultSpace,
              child: SizedBox(

                height: 80,
                child: ListView.separated(

                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: TKMartSizes.spaceBtwItems),
                  itemBuilder: (_, index) => TKMartRoundedImages(

                    width: 80,
                    backgroundColor: dark ? TKMartColors.dark : TKMartColors.white,
                    border: Border.all(color: TKMartColors.primary),
                    padding: const EdgeInsets.all(TKMartSizes.sm),
                    imageUrl: productGridImages[index],

                  ),
                ),
              ),
            ),

            const TKMartAppBar(

              showBackArrow: true,
              actions: [TKMartCircularIcon(icon: Iconsax.heart5, color: Colors.red)],

            )
          ],
        ),
      ),
    );
  }
}