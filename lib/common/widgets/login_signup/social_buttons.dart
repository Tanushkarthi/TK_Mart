import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/image_strings.dart';
import 'package:tk_mart/utils/constants/sizes.dart';

class TKMartSocialButtons extends StatelessWidget {

  const TKMartSocialButtons({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(

          decoration: BoxDecoration(border: Border.all(color: TKMartColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(

            onPressed: () {},
            icon: const Image(

              width: TKMartSizes.iconMd,
              height: TKMartSizes.iconMd,
              image: AssetImage(TKMartImages.google),

            ),
          ),
        ),

        const SizedBox(width: TKMartSizes.spaceBtwItems),
        Container(

          decoration: BoxDecoration(border: Border.all(color: TKMartColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(

            onPressed: () {},
            icon: const Image(

              width: TKMartSizes.iconMd,
              height: TKMartSizes.iconMd,
              image: AssetImage(TKMartImages.facebook),

            ),
          ),
        ),
      ],
    );
  }
}