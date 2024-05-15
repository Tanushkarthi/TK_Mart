import 'package:flutter/material.dart';
import 'package:tk_mart/common/styles/spacing_styles.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {

  const SuccessScreen({

    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed

  });

  final String image,title,subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(

        child: Padding(

          padding: TKMartSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(

            children: [

              Image(

                  image: AssetImage(image),
                  width: TKMartHelperFunctions.screenWidth() * 0.6,

              ),

              const SizedBox(height: TKMartSizes.spaceBtwSections),

              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TKMartSizes.spaceBtwItems),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TKMartSizes.spaceBtwSections),

              SizedBox(
                
                width: double.infinity,
                child: ElevatedButton(

                  onPressed: onPressed,
                  style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {

                        return TKMartColors.primary;

                        },
                      ),

                      foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {

                        return TKMartColors.white;

                        },
                      ),

                      side: MaterialStateProperty.resolveWith<BorderSide>((Set<MaterialState> states) {

                        return const BorderSide(color: TKMartColors.primary);

                        },
                      ),
                  ),

                  child: const Text(TKMartTexts.tContinue),

                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
