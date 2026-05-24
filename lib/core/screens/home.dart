import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/app_assets/app_assets.dart';
import 'package:mini_nft_marketplace/core/components/item.dart';
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
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                UnconstrainedBox(child: Item()),
                UnconstrainedBox(child: Item()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
