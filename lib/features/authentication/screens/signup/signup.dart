import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tk_mart/common/widgets/login_signup/form_divider.dart';
import 'package:tk_mart/common/widgets/login_signup/social_buttons.dart';
import 'package:tk_mart/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {

  const SignupScreen({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return Scaffold(

      appBar: AppBar(iconTheme: IconThemeData(color: dark ? TKMartColors.white : TKMartColors.dark)),
      body: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.all(TKMartSizes.defaultSpace),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(TKMartTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TKMartSizes.spaceBtwSections),
              const TKMartSignupForm(),
              const SizedBox(height: TKMartSizes.spaceBtwSections),
              TKMartFormDivider(dividerText: TKMartTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TKMartSizes.spaceBtwSections),
              const TKMartSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}