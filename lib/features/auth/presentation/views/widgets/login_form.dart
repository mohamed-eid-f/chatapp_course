import 'package:chatapp_course/core/shared/app_button.dart';
import 'package:chatapp_course/features/auth/presentation/views/widgets/app_password_field.dart';
import 'package:chatapp_course/core/shared/app_text_field.dart';
import 'package:chatapp_course/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 16,
          left: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Form(
        key: _formKey,
        autovalidateMode: _autovalidateMode,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppTextField(
              label: "Enter your email",
              textInputType: TextInputType.emailAddress,
              prefixIcon: Icons.email,
              validatorFunction: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                } else if (!value.contains("@")) {
                  return "unverified email address";
                }
                return null;
              },
              onSaved: (value) => email = value,
            ),
            const SizedBox(height: 16.0),
            AppPasswordField(
              prefixIcon: Icons.lock,
              label: "Enter your Password",
              onSaved: (value) => password = value,
            ),
            const SizedBox(height: 32.0),
            AppButton(
              title: "Log in",
              onPressed: () {
                _autovalidateMode = AutovalidateMode.always;
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                } else {
                  return;
                }
                setState(() {});
                // TODO: Login user with Firebase
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
