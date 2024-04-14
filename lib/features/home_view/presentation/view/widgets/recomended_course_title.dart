import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class RecommendedCourseTitle extends StatelessWidget {
  const RecommendedCourseTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended Course',
                style: Styles.textstyle16.copyWith(
                  color: AppColors.kPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).push('/materialview');
                },
                child: Text(
                  'View All',
                  style: Styles.text14.copyWith(
                    color: AppColors.kPrimary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
    ;
  }
}
