import 'package:chatapp_course/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppPasswordField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final void Function(String?)? onSaved;

  const AppPasswordField({
    super.key,
    required this.label,
    this.onSaved,
    this.initialValue,
  });

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        }
        return null;
      },
      initialValue: widget.initialValue,
      onSaved: widget.onSaved,
      obscureText: !visible,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        labelText: widget.label,
        suffixIcon: InkWell(
          onTap: () {
            setState(
              () {
                visible = !visible;
              },
            );
          },
          child: Icon(
            visible ? Icons.visibility_off : Icons.visibility,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
