import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/components/spacing.dart';
import 'package:mini_nft_marketplace/core/spaces/border_radius.dart';
import 'package:mini_nft_marketplace/core/spaces/font_size.dart';
import 'package:mini_nft_marketplace/core/spaces/height.dart';
import 'package:mini_nft_marketplace/core/spaces/padding.dart';
import 'package:mini_nft_marketplace/core/spaces/width.dart';
import 'package:mini_nft_marketplace/core/styling/app_colors.dart';
import 'package:mini_nft_marketplace/core/styling/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.text,
    required this.onPressed
  });
  final String title;
  final String subtitle;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppBorderRadius.br27),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppPadding.p27),
          decoration: BoxDecoration(
            color: AppColors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(AppBorderRadius.br27),
            border: Border.all(
              color: AppColors.white.withValues(alpha: 0.3),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                title,
                style: AppStyles.primaryHeadlineText.copyWith(
                  fontSize: FontSize.sp20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              HeightSpace(height: Height.h5_5),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: AppStyles.primaryHeadlineText.copyWith(
                  color: AppColors.whiteText.withValues(alpha: 0.6),
                  fontWeight: FontWeight.w400,
                  fontSize: FontSize.sp12,
                ),
              ),
              HeightSpace(height: Height.h27),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(AppBorderRadius.br99),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppBorderRadius.br99),
                      color: AppColors.lightPrimary.withValues(alpha: 0.5),
                      border: Border.all(
                        color: AppColors.white.withValues(alpha: 50),
                        width: 1.12,
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: Width.w200,
                      padding: const EdgeInsets.all(AppPadding.p13_5),
                      onPressed: onPressed,
                      child: Text(
                        text,
                        style: AppStyles.primaryHeadlineText.copyWith(
                          fontSize: FontSize.sp15_5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
