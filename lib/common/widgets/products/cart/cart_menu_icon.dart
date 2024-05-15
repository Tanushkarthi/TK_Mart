import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/utils/constants/colors.dart';

class TKMartCartCounterIcon extends StatelessWidget {

  const TKMartCartCounterIcon({

    super.key,
    this.iconColor,
    required this.onPressed,

  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    return Stack(

      children: [

        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(

          right: 0,
          child: Container(

            width: 18,
            height: 18,
            decoration: BoxDecoration(

              color: TKMartColors.black,
              borderRadius: BorderRadius.circular(100),

            ),

            child: Center(

              child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: TKMartColors.white, fontSizeFactor: 0.8)),

            ),
          ),
        )
      ],
    );
  }
}