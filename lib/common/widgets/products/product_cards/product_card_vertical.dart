import 'package:flutter/material.dart';
import 'package:flutter_emboss_store/common/styles/shadows.dart';
import 'package:flutter_emboss_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_emboss_store/common/widgets/images/rounded_image.dart';
import 'package:flutter_emboss_store/utils/constants/colors.dart';
import 'package:flutter_emboss_store/utils/constants/image_strings.dart';
import 'package:flutter_emboss_store/utils/constants/sizes.dart';
import 'package:flutter_emboss_store/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/circular_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          /// thumbnail, wishlist button, discount tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// thumbnail image
                const TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true,),
                /// sale tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                  ),
                ),
                /// favorite icon button
                const Positioned(
                  top: 0, right: 0,
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
                ),
              ],
            ),
          ),

          /// details
        ],
      ),
    );
  }
}
