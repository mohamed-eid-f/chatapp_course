import 'package:chatapp_course/core/constants/asset_images.dart';
import 'package:chatapp_course/core/theme/styles.dart';
import 'package:chatapp_course/features/auth/presentation/views/signup_view.dart';
import 'package:chatapp_course/features/auth/presentation/views/widgets/app_custom_rich_text.dart';
import 'package:chatapp_course/features/auth/presentation/views/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AssetImages.logo,
                fit: BoxFit.contain,
                height: 200,
                width: 200,
              ),
              const Text("Log in to your account", style: Styles.textStyle24),
              const SizedBox(
                height: 80,
              ),
              const LoginForm(),
              const SizedBox(height: 32.0),
              AppCustomRichText(
                text_1: "Don't have an account?",
                text_2: " Register here",
                onTap_2: () {
                  debugPrint("Register here");
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const SignupView()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
