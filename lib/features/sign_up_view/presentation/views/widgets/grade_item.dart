import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/core/widgets/custom_text_form_feild.dart';

class GradItem extends StatelessWidget {
  const GradItem({
    super.key,
    required this.text,
    this.onchanged,
  });
  final dynamic Function(String)? onchanged;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 6, top: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 200,
            child: Text(
              text,
              style: Styles.text14.copyWith(
                  fontSize: 12,
                  color: AppColors.kPrimary,
                  fontWeight: FontWeight.w400),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
              width: 114,
              height: 31,
              child: CustomTextFormFeild(
                keyboardType: TextInputType.number,
                onchanged: onchanged,
                color: AppColors.kGray,
              ))
        ],
      ),
    );
  }
}
