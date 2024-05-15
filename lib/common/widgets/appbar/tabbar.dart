import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/device/device_utility.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';

class TKMartTabBar extends StatelessWidget implements PreferredSizeWidget{
  const TKMartTabBar({

    super.key,
    required this.tabs

  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {

    final dark = TKMartHelperFunctions.isDarkMode(context);
    return Material(

      color: dark ? TKMartColors.black : TKMartColors.white,
      child: TabBar(

        tabs: tabs,
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: TKMartColors.primary,
        unselectedLabelColor: TKMartColors.darkerGrey,
        labelColor: dark ? TKMartColors.white : TKMartColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TKMartDeviceUtils.getAppBarHeight());
}