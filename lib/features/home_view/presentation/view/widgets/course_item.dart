import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .38,
          decoration: const BoxDecoration(color: Color(0xffDBE3E8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/image course.png'),
              Text(
                'computer science,',
                style: Styles.textstyle16.copyWith(
                  color: AppColors.kPrimary,
                ),
              ),
              Text(
                'part1',
                style: Styles.textstyle16.copyWith(
                  color: AppColors.kPrimary,
                ),
              ),
              Text(
                'course',
                style: Styles.text14.copyWith(
                    color: AppColors.kPrimary, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ],
    );
  }
}
