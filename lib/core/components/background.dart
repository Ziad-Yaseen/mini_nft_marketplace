import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/app_assets/app_assets.dart';
import 'package:mini_nft_marketplace/core/styling/app_colors.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.children, this.padding = 0});
  final List<Widget> children;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // clipBehavior: Clip.antiAlias,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.gradient1, AppColors.gradient2],
          ),
        ),
        child: Stack(
          children: [
            Image.asset(
              AppAssets.background,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(children: children),
            ),
          ],
        ),
      ),
    );
  }
}
