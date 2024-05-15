import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/layouts/grid_layout.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/lists.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';
import 'package:tk_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:tk_mart/common/widgets/images/tk_circular_image.dart';
import 'package:tk_mart/common/widgets/texts/tk_brand_title_text_with_verified_icon.dart';
import 'package:tk_mart/utils/constants/enums.dart';
class TKMartBrandCard extends StatelessWidget{

  const TKMartBrandCard({

    super.key,
    this.onTap,
    required this.showBorder,

  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context){

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return TKMartGridLayout(

        itemCount: productLogo.length,
        mainAxisExtent: 80,
        itemBuilder: (_, index){

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
                      image: productLogo [index],
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

                        TKMartBrandTitleWithVerifiedIcon(title: productNames[index], brandTextsize: TextSizes.large),
                        const SizedBox(height: TKMartSizes.spaceBtwItems / 2),
                        Text(

                          productCount[index],
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
    );
  }
}