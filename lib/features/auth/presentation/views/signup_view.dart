import 'package:chatapp_course/core/constants/asset_images.dart';
import 'package:chatapp_course/core/theme/styles.dart';
import 'package:chatapp_course/features/auth/presentation/views/login_view.dart';
import 'package:chatapp_course/features/auth/presentation/views/widgets/app_custom_rich_text.dart';
import 'package:chatapp_course/features/auth/presentation/views/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
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
              const Text("Register To New Account", style: Styles.textStyle24),
              const SizedBox(
                height: 80,
              ),
              const SignupForm(),
              const SizedBox(height: 32.0),
              AppCustomRichText(
                text_1: "Already have an account?",
                text_2: " Login here",
                onTap_2: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const LoginView()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
