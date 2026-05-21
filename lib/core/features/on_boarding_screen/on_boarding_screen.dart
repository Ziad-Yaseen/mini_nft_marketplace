import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_nft_marketplace/core/components/background.dart';
import 'package:mini_nft_marketplace/core/components/custom_card.dart';
import 'package:mini_nft_marketplace/core/components/spacing.dart';
import 'package:mini_nft_marketplace/core/routing/app_routes.dart';
import 'package:mini_nft_marketplace/core/spaces/height.dart';
import 'package:mini_nft_marketplace/core/styling/app_styles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      padding: 26.0,
      children: [
        const SizedBox(height: 80),
        Text(
          'Welcome to NFT Marketplace',
          style: AppStyles.primaryHeadlineText,
        ),
        const Spacer(),
        CustomCard(
          title: 'Explore and Mint NFTs',
          subtitle:
              'You can buy and sell the NFTs of the best\nartists in the world.',
          text: 'Get started now',
          onPressed: () {
            GoRouter.of(context).replaceNamed(AppRoutes.home);
          },
        ),
        HeightSpace(height: Height.h70),
      ],
    );
  }
}
