import 'package:flutter/material.dart';
import 'package:tk_mart/utils/theme/custom_themes/appbar_theme.dart';
import 'package:tk_mart/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:tk_mart/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:tk_mart/utils/theme/custom_themes/clip_theme.dart';
import 'package:tk_mart/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:tk_mart/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:tk_mart/utils/theme/custom_themes/text_field_theme.dart';
import 'package:tk_mart/utils/theme/custom_themes/text_theme.dart';

class TKMartAppTheme{

  TKMartAppTheme._();
  static ThemeData lightTheme = ThemeData(

    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TKMartTextTheme.lightTextTheme,
    chipTheme: TKMartChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TKMartAppBarTheme.lightAppBarTheme,
    checkboxTheme: TKMartCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TKMartBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TKMartElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TKMartOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TKMartTextFormFieldTheme.lightInputDecorationTheme,

  );

  static ThemeData darkTheme = ThemeData(

    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TKMartTextTheme.darkTextTheme,
    chipTheme: TKMartChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TKMartAppBarTheme.darkAppBarTheme,
    checkboxTheme: TKMartCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TKMartBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TKMartElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TKMartOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TKMartTextFormFieldTheme.darkInputDecorationTheme,

  );
}