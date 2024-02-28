import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/button_signup.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/enter_grade_body.dart';

class EnterGrade extends StatelessWidget {
  const EnterGrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.kPrimary,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .20,
          ),
          child: Text(
            'Registration',
            style: Styles.textstyle18.copyWith(
              color: AppColors.kPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: const Column(
        children: [
          Divider(
            thickness: 1,
          ),
          EnterGradeBody(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: ButtonSignUp(),
          )
        ],
      ),
    );
  }
}
