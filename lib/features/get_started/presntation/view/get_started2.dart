import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';

class GetStarted2 extends StatelessWidget {
  const GetStarted2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push('/asDoctorOrStudent');
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: AppColors.kPrimary),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Online Study is the ',
                        style: Styles.text32.copyWith(
                            color: AppColors.kPrimary,
                            fontWeight: FontWeight.w300)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Best choise for',
                      style: Styles.textstyle24.copyWith(
                        color: AppColors.kPrimary,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Everyone',
                      style: Styles.textstyle24.copyWith(
                        color: AppColors.kPrimary,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  AssetsPath.learning2,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Text(
                    'Best Plat Form for both',
                    textAlign: TextAlign.start,
                    style: Styles.textstyle24.copyWith(
                        color: AppColors.kPrimary, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Text(
                    'Teatching & Learning',
                    textAlign: TextAlign.start,
                    style: Styles.textstyle24.copyWith(
                        color: AppColors.kPrimary, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      AssetsPath.framr2,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * .10,
                    ),
                    GestureDetector(
                      child: Image.asset(AssetsPath.buttonStart),
                      onTap: () {
                        GoRouter.of(context).push(AssetsPath.getStarted3);
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
    ;
  }
}
