import 'package:chatapp_course/core/shared/app_button.dart';
import 'package:chatapp_course/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import 'app_password_field.dart';
import '../../../../../core/shared/app_text_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  String? name, email, phone, password;

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
              prefixIcon: Icons.person,
              label: "Enter Your Name",
              validatorFunction: (value) {
                if (value == null || value.isEmpty) {
                  return "Name is required";
                } else if (value.length <= 3) {
                  return "Your Name is too short";
                }
                return null;
              },
              onSaved: (value) => name = value,
            ),
            const SizedBox(height: 8.0),
            AppTextField(
              prefixIcon: Icons.email,
              label: "Enter Your Email",
              textInputType: TextInputType.emailAddress,
              validatorFunction: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                } else if (!value.contains("@")) {
                  return "unverified email address";
                }
                return null;
              },
              onSaved: (value) {
                email = value;
              },
            ),
            const SizedBox(height: 8.0),
            AppTextField(
              prefixIcon: Icons.phone_android,
              label: "Enter Your Phone",
              validatorFunction: (value) {
                if (value == null || value.isEmpty) {
                  return "Phone is required";
                } else if (value.length != 11 || value.startsWith("01")) {
                  return "unverified phone number";
                }
                return null;
              },
              onSaved: (value) => phone = value,
            ),
            const SizedBox(height: 8.0),
            AppPasswordField(
              prefixIcon: Icons.lock,
              label: "Password",
              onSaved: (value) {
                password = value;
              },
            ),
            const SizedBox(height: 24.0),
            AppButton(
              title: "Sign up",
              onPressed: () {
                _autovalidateMode = AutovalidateMode.always;
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                } else {
                  return;
                }
                setState(() {});
                // TODO: Sign up user with Firebase
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
