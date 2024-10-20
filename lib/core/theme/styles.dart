import 'package:chatapp_course/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle textStyle24 = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle textStyle15 = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
}
