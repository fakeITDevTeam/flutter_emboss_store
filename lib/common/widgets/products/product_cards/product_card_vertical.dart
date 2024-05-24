import 'package:flutter/material.dart';
import 'package:flutter_emboss_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_emboss_store/common/widgets/images/rounded_image.dart';
import 'package:flutter_emboss_store/common/widgets/texts/product_title_text.dart';
import 'package:flutter_emboss_store/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadows.dart';
import '../../icons/circular_icon.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_price_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
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
                  TRoundedImage(
                    backgroundColor: dark ? TColors.dark : TColors.light,
                    imageUrl: TImages.productImage1, applyImageRadius: true,
                  ),
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
                    child: TCircularIcon(
                      icon: Iconsax.heart5, color: Colors.red,
                      backgroundColor: Colors.transparent,)
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
      
            /// details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'Green Nike Air Shoes', smallSize: true,),
                  SizedBox(height: TSizes.spaceBtwItems / 2,),
                  TBrandTitleTextWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),

            const Spacer(),

            /// price row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(price: '35.0',),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2, height: TSizes.iconLg * 1.2,
                    child: Center(child: Icon(Iconsax.add, color: TColors.white,)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
