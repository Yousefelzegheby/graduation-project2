import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class ForgetPassward extends StatelessWidget {
  const ForgetPassward({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Text(
            'Forget Passward',
            style: Styles.text14.copyWith(
              color: AppColors.kPrimary,
              fontWeight: FontWeight.normal,
            ),
          ),
        )
      ],
    );
  }
}
