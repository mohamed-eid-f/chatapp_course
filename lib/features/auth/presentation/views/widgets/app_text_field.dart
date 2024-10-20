import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final TextInputType? textInputType;
  final void Function(String?)? onSaved;

  const AppTextField({
    super.key,
    required this.label,
    this.onSaved,
    this.initialValue,
    this.textInputType,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
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
      keyboardType: widget.textInputType,
      initialValue: widget.initialValue,
      onSaved: widget.onSaved,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        labelText: widget.label,
      ),
    );
  }
}
