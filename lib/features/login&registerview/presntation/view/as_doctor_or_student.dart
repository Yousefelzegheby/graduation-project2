import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/widgets/custom_button.dart';
import 'package:graduation/features/login&registerview/presntation/view/widgets/text_login_intro.dart';

class AsDoctorOrStudent extends StatelessWidget {
  const AsDoctorOrStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 128, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AssetsPath.logo),
                const SizedBox(
                  height: 54,
                ),
                CustomButton(
                    textColor: AppColors.kLightColor,
                    fontsize: 16,
                    theText: 'As a Student',
                    onpressed: () {
                      GoRouter.of(context).push('/LoginViwe');
                    },
                    backgroundColor: AppColors.kPrimary),
                const SizedBox(
                  height: 32,
                ),
                CustomButton(
                    textColor: AppColors.kLightColor,
                    fontsize: 16,
                    theText: 'As a Doctor',
                    onpressed: () {},
                    backgroundColor: AppColors.kPrimary),
                const SizedBox(
                  height: 32,
                ),
                const TextLoginIntro()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
