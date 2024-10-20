import 'package:chatapp_course/features/auth/presentation/views/widgets/app_button.dart';
import 'package:chatapp_course/features/auth/presentation/views/widgets/app_password_field.dart';
import 'package:chatapp_course/features/auth/presentation/views/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  FocusNode focusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 16,
          left: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const AppTextField(
                label: "Enter your email",
                // onSaved: (value) => email = value,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16.0),
              const AppPasswordField(
                label: "Enter your Password",
                // onSaved: (value) => password = value,
              ),
              const SizedBox(height: 32.0),
              AppButton(
                title: "Log in",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
