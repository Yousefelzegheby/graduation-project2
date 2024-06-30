import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class ButtonSuggest extends StatelessWidget {
  const ButtonSuggest(
      {super.key,
      required this.textButton,
      this.onTap,
      required this.textColor,
      this.backColor});
  final String textButton;
  final void Function()? onTap;
  final Color? textColor;
  final Color? backColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * .4,
        height: 56,
        decoration: bottomDecoration(),
        child: Center(
          child: Text(
            textButton,
            style: Styles.textstyle16.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  ShapeDecoration bottomDecoration() {
    return ShapeDecoration(
      color: backColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.kGray)),
    );
  }
}
