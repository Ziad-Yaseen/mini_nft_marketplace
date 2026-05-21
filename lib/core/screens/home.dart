import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/app_assets/app_assets.dart';
import 'package:mini_nft_marketplace/core/spaces/border_radius.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF211134),
      appBar: AppBar(
        backgroundColor: const Color(0xFF211134),
        title: const Text(
          'NFT Marketplace',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 27.03),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(AppBorderRadius.br27),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(AppAssets.image1),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(27),
                          ),
                          child: ShaderMask(
                            shaderCallback: (rect) {
                              return const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.transparent, Colors.black],
                                stops: [0.0, 0.9],
                              ).createShader(rect);
                            },
                            blendMode: BlendMode.dstIn,
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                              child: Container(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(27),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withValues(alpha: 0.0),
                                Colors.black.withValues(alpha: 0.6),
                              ],
                            ),
                          ),
                          alignment: Alignment.bottomCenter,
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 9.14),
                            child: Text(
                              'Art',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
