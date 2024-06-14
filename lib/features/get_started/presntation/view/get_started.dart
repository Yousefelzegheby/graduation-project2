import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

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
                SizedBox(
                  height: MediaQuery.of(context).size.height * .10,
                ),
                Image.asset(
                  AssetsPath.learning,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Text(
                    'Discover Your Learning Adventure',
                    textAlign: TextAlign.center,
                    style: Styles.textstyle24.copyWith(
                      color: AppColors.kPrimary,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      AssetsPath.framr1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * .10,
                    ),
                    GestureDetector(
                      child: Image.asset(AssetsPath.buttonStart),
                      onTap: () {
                        GoRouter.of(context).push(AssetsPath.getStarted2);
                        // GoRouter.of(context).push('/suggestView');
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
  }
}
