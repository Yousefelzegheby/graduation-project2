import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/firist_year_button.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/firist_year_grade.dart';

class EnterGradeBody extends StatefulWidget {
  const EnterGradeBody({super.key});

  @override
  State<EnterGradeBody> createState() => _EnterGradeBodyState();
}

double height = 0;
double height2 = 0;
double height3 = 0;
double height4 = 0;

class _EnterGradeBodyState extends State<EnterGradeBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
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
                text: 'Firist',
                onTap: () {
                  setState(() {
                    if (height == 0) {
                      height = 340;
                      height4 = 0;
                      height2 = 0;
                      height3 = 0;
                    } else {
                      height = 0;
                    }
                  });
                },
              ),
              const SizedBox(
                height: 8,
              ),
              FiristYearGrade(
                height: height,
              ),
              FiristYearButton(
                text: 'Second',
                onTap: () {
                  setState(() {
                    if (height2 == 0) {
                      height2 = 340;
                      height = 0;
                      height4 = 0;
                      height3 = 0;
                    } else {
                      height2 = 0;
                    }
                  });
                },
              ),
              const SizedBox(
                height: 8,
              ),
              FiristYearGrade(
                height: height2,
              ),
              FiristYearButton(
                text: 'Second',
                onTap: () {
                  setState(() {
                    if (height3 == 0) {
                      height3 = 340;
                      height = 0;
                      height2 = 0;
                      height4 = 0;
                    } else {
                      height3 = 0;
                    }
                  });
                },
              ),
              const SizedBox(
                height: 8,
              ),
              FiristYearGrade(
                height: height3,
              ),
              FiristYearButton(
                text: 'Second',
                onTap: () {
                  setState(() {
                    if (height4 == 0) {
                      height4 = 340;
                      height = 0;
                      height2 = 0;
                      height3 = 0;
                    } else {
                      height4 = 0;
                    }
                  });
                },
              ),
              const SizedBox(
                height: 8,
              ),
              FiristYearGrade(
                height: height4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
