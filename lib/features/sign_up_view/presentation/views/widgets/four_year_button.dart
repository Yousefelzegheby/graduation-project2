import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class FourYearButton extends StatelessWidget {
  const FourYearButton({super.key, this.onTap});
  final void Function()? onTap;
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
                'Firist',
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
    ;
  }
}
