import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tk_mart/features/authentication/screens/onboarding/onboarding.dart';
import 'package:tk_mart/utils/theme/theme.dart';

class App extends StatelessWidget {

  const App({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(

      themeMode: ThemeMode.system,
      theme: TKMartAppTheme.lightTheme,
      darkTheme: TKMartAppTheme.darkTheme,
      home: const OnBoardingScreen(),

    );
  }
}