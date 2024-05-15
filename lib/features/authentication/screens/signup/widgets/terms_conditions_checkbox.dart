import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartTermsAndConditionCheckBox extends StatelessWidget {

  const TKMartTermsAndConditionCheckBox({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return Row(

      children: [

        SizedBox(width: 24, height: 24, child: Checkbox(value: true,activeColor: TKMartColors.primary,onChanged: (value) {})),
        const SizedBox(width: TKMartSizes.spaceBtwItems),
        Text.rich(

            TextSpan(

                children: [

                  TextSpan(text: TKMartTexts.isAgreeTo, style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: TKMartTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(

                    color: dark ? TKMartColors.white : TKMartColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TKMartColors.white : TKMartColors.primary,

                  )),

                  TextSpan(text: TKMartTexts.and, style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: TKMartTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(

                    color: dark ? TKMartColors.white : TKMartColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TKMartColors.white : TKMartColors.primary,

                  )),
                ]
            ),
        ),
      ],
    );
  }
}