import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';

void showSnakbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: AppColors.kPrimary,
    ),
  );
}
