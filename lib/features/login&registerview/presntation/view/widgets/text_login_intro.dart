import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class TextLoginIntro extends StatelessWidget {
  const TextLoginIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "By creating an account,you accept academix's",
          style: Styles.text14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Terms of Services",
              style: Styles.text14.copyWith(color: AppColors.kPrimary),
            ),
            const SizedBox(
              width: 2,
            ),
            const Text(
              "and",
              style: Styles.text14,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              "Privacy Policy",
              style: Styles.text14.copyWith(color: AppColors.kPrimary),
            ),
          ],
        )
      ],
    );
  }
}
