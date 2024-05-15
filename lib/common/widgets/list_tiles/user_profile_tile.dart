import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/common/widgets/images/tk_circular_image.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/constants/image_strings.dart';

class TKMartUserProfileTile extends StatelessWidget {
  const TKMartUserProfileTile({

    super.key,
    required this.onPressed,

  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {

    return ListTile(

      leading: const TKMartCircularImage(image: TKMartImages.user, width: 50, height: 50, padding: 0),
      title: Text('Tanush Karthikeyan', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TKMartColors.white)),
      subtitle: Text('support@tkmart.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TKMartColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: TKMartColors.white)),

    );
  }
}