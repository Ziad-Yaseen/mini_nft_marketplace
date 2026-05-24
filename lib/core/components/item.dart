import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/app_assets/app_assets.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 167.5,
      width: 252,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(27),
        child: Stack(
          children: [
            Image.asset(AppAssets.image1),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: SizedBox(
                // height: 30,
                width: 252,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        // borderRadius: const BorderRadius.vertical(
                        //   bottom: Radius.circular(27),
                        // ),
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
                        padding: EdgeInsets.symmetric(vertical: 9.14),
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
                ),
              ),
            ),
            // Positioned(
            //   child:
            // ),
          ],
        ),
      ),
    );
  }
}
