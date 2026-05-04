import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_nft_marketplace/core/routing/router_generation_config.dart';

void main() {
  runApp(const MiniNftMarketplace());
}

class MiniNftMarketplace extends StatelessWidget {
  const MiniNftMarketplace({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(351.5, 760.5),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        routerConfig: RouterGenerationConfig.goRouter,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}