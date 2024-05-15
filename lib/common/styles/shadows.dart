import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/colors.dart';

class TKMartShadowStyle{

  static final verticalProductShadow = BoxShadow(

    color: TKMartColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),

  );

  static final horizontalProductShadow = BoxShadow(

    color: TKMartColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),

  );
}