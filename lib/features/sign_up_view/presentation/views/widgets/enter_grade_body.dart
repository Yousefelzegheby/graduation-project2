import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/firist_year_button.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/firist_year_grade.dart';

class EnterGradeBody extends StatelessWidget {
  const EnterGradeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'My Personal Data:',
                style: Styles.textstyle18.copyWith(
                  color: AppColors.kPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          FiristYearButton(
            onTap: () {},
          ),
          const SizedBox(
            height: 8,
          ),
          FiristYearGrade()
        ],
      ),
    );
  }
}
