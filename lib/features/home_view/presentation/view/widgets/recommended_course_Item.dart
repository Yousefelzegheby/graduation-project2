import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class RecomendedCourseItem extends StatelessWidget {
  const RecomendedCourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .4,
          decoration: const BoxDecoration(color: Color(0xffDBE3E8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/image course.png'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  'computer science,',
                  style: Styles.textstyle16.copyWith(
                    color: AppColors.kPrimary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  'course',
                  style: Styles.text14.copyWith(
                      color: AppColors.kPrimary,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 6, right: 6, bottom: 8, top: 8),
                child: Row(
                  children: [
                    Image.asset('assets/images/clock_4725362 1.png'),
                    const SizedBox(
                      width: 2.5,
                    ),
                    Text('20hours',
                        style: Styles.text14.copyWith(
                            color: AppColors.kPrimary,
                            fontWeight: FontWeight.w400,
                            fontSize: 12)),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
    ;
  }
}
