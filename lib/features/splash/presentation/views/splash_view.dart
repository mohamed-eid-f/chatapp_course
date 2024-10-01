import 'dart:async';

import 'package:chatapp_course/core/constants/asset_images.dart';
import 'package:chatapp_course/core/theme/styles.dart';
import 'package:chatapp_course/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      if (context.mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const HomeView(),
          ),
        );
      }
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AssetImages.logo,
              fit: BoxFit.contain,
              height: 200,
              width: 200,
            ),
            const Text("WhatsUp", style: Styles.textStyle24),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "The best chat app for this century",
              style: Styles.textStyle15,
            ),
          ],
        ),
      ),
    );
  }
}
