import 'package:flutter/material.dart';
import 'package:tk_mart/utils/constants/colors.dart';

class TKMartSettingsMenuTile extends StatelessWidget {

  const TKMartSettingsMenuTile({

    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.onTap,

  });

  final IconData? icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: ShaderMask(

        shaderCallback: (Rect bounds) {

          return const LinearGradient(

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Colors.blueGrey, TKMartColors.primary],

          ).createShader(bounds);
          },

        child: Icon(icon,size: 28),

      ),

      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,

    );
  }
}
