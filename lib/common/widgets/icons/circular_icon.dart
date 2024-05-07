import 'package:flutter/material.dart';
import 'package:flutter_emboss_store/utils/constants/sizes.dart';
import 'package:flutter_emboss_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
    // required this.dark,
  });

  // final bool dark;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
          ? backgroundColor!
          : THelperFunctions.isDarkMode(context)
            ? TColors.black.withOpacity(0.9)
            : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
        // color: dark ? TColors.black.withOpacity(0.9) : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,)),
    );
  }
}