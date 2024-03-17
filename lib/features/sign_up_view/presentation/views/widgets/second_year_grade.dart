import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/lisit_view_second_degree.dart';

class SecondYearGrade extends StatefulWidget {
  const SecondYearGrade({super.key, this.height});
  final double? height;

  @override
  State<SecondYearGrade> createState() => _SecondYearGradeState();
}

class _SecondYearGradeState extends State<SecondYearGrade> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: AnimatedContainer(
          height: widget.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: AppColors.kPrimary,
              width: 1,
            ),
          ),
          duration: const Duration(milliseconds: 1),
          child: Column(
            children: [
              Container(
                height: 34,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.kPrimary,
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Course',
                        style: Styles.text14.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kLightColor),
                      ),
                      Text(
                        'Degree',
                        style: Styles.text14.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kLightColor),
                      )
                    ],
                  ),
                ),
              ),
              const ListViewSecondDegreee(),
            ],
          )),
    );
  }
}
