import 'package:chatapp_course/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String? label;
  final IconData? prefixIcon;
  final String? initialValue;
  final TextInputType? textInputType;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validatorFunction;

  const AppTextField({
    super.key,
    this.label,
    this.onSaved,
    this.prefixIcon,
    this.initialValue,
    this.textInputType,
    this.validatorFunction,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validatorFunction ??
          (value) {
            if (value == null || value.isEmpty) {
              return "Field is required";
            }
            return null;
          },
      keyboardType: widget.textInputType,
      initialValue: widget.initialValue,
      onSaved: widget.onSaved,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        fillColor: Colors.white,
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
      ),
    );
  }
}
