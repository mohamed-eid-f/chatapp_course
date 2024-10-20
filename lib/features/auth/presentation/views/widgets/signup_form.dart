import 'package:chatapp_course/features/auth/presentation/views/widgets/app_button.dart';
import 'package:chatapp_course/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import 'app_password_field.dart';
import 'app_text_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  FocusNode focusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  String? name, email, phone, password, experienceLevel, phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 16,
        left: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Form(
        key: _formKey,
        autovalidateMode: _autovalidateMode,
        child: Column(
          children: [
            AppTextField(
              label: "Enter Your Name",
              onSaved: (value) => name = value,
            ),
            const SizedBox(height: 8.0),
            AppTextField(
              label: "Enter Your Email",
              textInputType: TextInputType.emailAddress,
              onSaved: (value) {
                email = value;
              },
            ),
            const SizedBox(height: 8.0),
            AppTextField(
              label: "Enter Your Phone",
              onSaved: (value) => phone = value,
            ),
            const SizedBox(height: 8.0),
            AppPasswordField(
              label: "Password",
              onSaved: (value) {
                password = value;
              },
            ),
            const SizedBox(height: 24.0),
            AppButton(
              title: "Sign up",
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const HomeView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
