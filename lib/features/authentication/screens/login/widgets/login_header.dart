import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/image_strings.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartLoginHeader extends StatelessWidget {

  const TKMartLoginHeader({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Image(height: 150, image: AssetImage(dark ? TKMartImages.lightAppLogo : TKMartImages.darkAppLogo)),
        Text(TKMartTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TKMartSizes.sm),
        Text(TKMartTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),

      ],
    );
  }
}