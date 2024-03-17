import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup_year/sign_up_years_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/firist_year_button.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/firist_year_grade.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/second_year_grade.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/third_year_grade.dart';

class EnterGradeBody extends StatefulWidget {
  const EnterGradeBody({super.key});

  @override
  State<EnterGradeBody> createState() => _EnterGradeBodyState();
}

GlobalKey<FormState> key = GlobalKey();
double? height;
double? height2;
double? height3;
double? height4;

class _EnterGradeBodyState extends State<EnterGradeBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpYearsCubit, SignUpYearsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SignUpYearSuccess) {
          if (state.success[0]['academic_year'] == '2') {
            height = 340;
            height2 = 0;
            height3 = 0;
          } else if (state.success[0]['academic_year'] == '3') {
            height = 340;
            height2 = 340;
            height3 = 0;
          } else if (state.success[0]['academic_year'] == '4') {
            height = 340;
            height2 = 340;
            height3 = 340;
          } else {
            height = 0;
            height2 = 0;
            height3 = 0;
          }
        }
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
                      // if (int.parse(acadimicYear) == 2) {
                      //   setState(() {
                      //     height = 340;
                      //   });
                      // }
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  FiristYearGrade(
                    height: height,
                  ),
                  const FiristYearButton(
                    text: 'Second',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SecondYearGrade(
                    height: height2,
                  ),
                  const FiristYearButton(
                    text: 'Third',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ThirdYearGrade(
                    height: height3!,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
