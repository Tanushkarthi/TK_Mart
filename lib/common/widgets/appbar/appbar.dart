import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/utils/constants/sizes.dart';
import 'package:tk_mart/utils/device/device_utility.dart';

class TKMartAppBar extends StatelessWidget implements PreferredSizeWidget{

  const TKMartAppBar({
    
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.loadingOnPressed,
    this.showBackArrow = false,
  
  });
  
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? loadingOnPressed;

  @override
  Widget build(BuildContext context){

    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: TKMartSizes.md),
      child: AppBar(

        automaticallyImplyLeading: false,
        leading: showBackArrow ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left)) : leadingIcon != null ? IconButton(onPressed: loadingOnPressed, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,

      ),

    );

  }

  @override
  Size get preferredSize => Size.fromHeight(TKMartDeviceUtils.getAppBarHeight());
}