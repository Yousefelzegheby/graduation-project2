import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class ButtonSignUpItemRow extends StatelessWidget {
  const ButtonSignUpItemRow({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .33,
        ),
        Text(
          text,
          style: Styles.textstyle16.copyWith(
            color: AppColors.kLightColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .3,
        ),
        const Icon(
          Icons.arrow_forward,
          color: AppColors.kLightColor,
        ),
      ],
    );
  }
}
