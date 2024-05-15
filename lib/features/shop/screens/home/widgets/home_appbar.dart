import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/appbar/appbar.dart';
import 'package:tk_mart/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/text_strings.dart';

class TKMartHomeAppBar extends StatelessWidget {
  const TKMartHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return TKMartAppBar(

      title: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(TKMartTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TKMartColors.grey)),
          Text(TKMartTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TKMartColors.white)),

        ],
      ),

      actions: [

        TKMartCartCounterIcon(onPressed: (){}, iconColor: TKMartColors.white)
      ],
    );
  }
}