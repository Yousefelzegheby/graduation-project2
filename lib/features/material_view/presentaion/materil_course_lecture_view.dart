import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class MaterilCoureseLecturesView extends StatelessWidget {
  const MaterilCoureseLecturesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: AppColors.kPrimary,
            ),
          ),
          title: const Text(
            "Courses",
            style: Styles.text18Labeld,
          ),
          centerTitle: true,
          toolbarHeight: 88),
    );
  }
}
