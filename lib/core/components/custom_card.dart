import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/components/spacing.dart';
import 'package:mini_nft_marketplace/core/styling/app_colors.dart';
import 'package:mini_nft_marketplace/core/styling/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.text,
  });
  final String title;
  final String subtitle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(27),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(27),
          decoration: BoxDecoration(
            color: AppColors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(27),
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
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              HeightSpace(height: 5.5),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: AppStyles.primaryHeadlineText.copyWith(
                  color: Color(0xFFEBEBF5).withValues(alpha: 0.6),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              HeightSpace(height: 27),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(99),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(99),
                      color: Color(0xFF97A9F6).withValues(alpha: 0.5),
                      border: Border.all(
                        color: AppColors.white.withValues(alpha: 50),
                        width: 1.12,
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: 200,
                      padding: EdgeInsets.all(13.5),
                      onPressed: () {},
                      child: Text(
                        text,
                        style: AppStyles.primaryHeadlineText.copyWith(
                          fontSize: 15.5,
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
