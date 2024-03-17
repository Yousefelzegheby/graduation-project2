import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/core/widgets/custom_text_form_feild.dart';

class CustomSignUpItem extends StatelessWidget {
  const CustomSignUpItem(
      {super.key,
      required this.text,
      required this.hintText,
      this.prefix,
      this.onchanged,
      this.keyboardType});
  final String text;
  final String hintText;
  final IconData? prefix;
  final dynamic Function(String)? onchanged;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: Styles.textstyle16.copyWith(
                color: AppColors.kPrimary,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          height: 56,
          child: CustomTextFormFeild(
            color: AppColors.kGray,
            hintText: hintText,
            sufex: prefix,
            onchanged: onchanged,
            keyboardType: keyboardType,
          ),
        )
      ],
    );
  }
}
