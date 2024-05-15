import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tk_mart/common/styles/spacing_styles.dart';
import 'package:tk_mart/common/widgets/login_signup/form_divider.dart';
import 'package:tk_mart/common/widgets/login_signup/social_buttons.dart';
import 'package:tk_mart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:tk_mart/features/authentication/screens/login/widgets/login_header.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(

        child: Padding(

          padding: TKMartSpacingStyle.paddingWithAppBarHeight,
          child: Column(

            children: [

              const TKMartLoginHeader(),
              const TKMartLoginForm(),
              TKMartFormDivider(dividerText: TKMartTexts.orSignInWith.capitalize!),
              const SizedBox(height: TKMartSizes.spaceBtwSections),
              const TKMartSocialButtons(),

            ],
          ),
        ),
      ),
    );
  }
}