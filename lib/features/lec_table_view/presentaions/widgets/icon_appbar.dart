import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';

class IconAppbar extends StatelessWidget {
  const IconAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      onPressed: () {
        GoRouter.of(context).pop();
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        size: 24,
        color: AppColors.kPrimary,
      ),
    );
  }
}
