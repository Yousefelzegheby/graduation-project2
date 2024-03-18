import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class ButtonSignUpItemRow extends StatelessWidget {
  const ButtonSignUpItemRow({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .33,
        ),
        child,
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
