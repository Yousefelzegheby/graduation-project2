import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class DepartmentItem extends StatelessWidget {
  const DepartmentItem({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * .41,
        height: MediaQuery.of(context).size.height * .15,
        decoration: const BoxDecoration(
            color: Color(0xffDBE3E8),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: Styles.textstyle16.copyWith(
                color: AppColors.kPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              text2,
              style: Styles.textstyle16.copyWith(
                color: AppColors.kPrimary,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
