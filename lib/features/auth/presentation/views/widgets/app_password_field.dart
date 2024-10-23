import 'package:chatapp_course/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppPasswordField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final IconData? prefixIcon;
  final void Function(String?)? onSaved;

  const AppPasswordField({
    super.key,
    required this.label,
    this.onSaved,
    this.initialValue,
    this.prefixIcon,
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
        } else if (value!.length < 6) {
          return "Password must be at least 6 characters long";
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
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.grey, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
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
