import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class FiristYearButton extends StatelessWidget {
  const FiristYearButton({super.key, this.onTap, required this.text});
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 53,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: AppColors.kPrimary),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Styles.text14.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.kLightColor),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: AppColors.kLightColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
