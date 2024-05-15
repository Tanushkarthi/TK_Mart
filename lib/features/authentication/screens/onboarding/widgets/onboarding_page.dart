import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {

  const OnBoardingPage({

    super.key,
    required this.image,
    required this.title,
    required this.subTitle

  });

  final String image,title,subTitle;

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.all(TKMartSizes.defaultSpace),
      child: Column(

        children: [

          Image(

              width: TKMartHelperFunctions.screenWidth() * 0.8,
              height: TKMartHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)

          ),

          Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
          const SizedBox(height: TKMartSizes.spaceBtwItems),
          Text(subTitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),

        ],
      ),
    );
  }
}