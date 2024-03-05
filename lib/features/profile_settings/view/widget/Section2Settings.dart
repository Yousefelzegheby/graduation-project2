import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class Section2Settings extends StatelessWidget {
  const Section2Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Account Settings",
                style: Styles.text32
                    .copyWith(color: AppColors.kPrimary, fontSize: 24),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
