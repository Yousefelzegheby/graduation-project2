import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/snakeBar.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/post_grade/post_grade_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup/sign_up_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup_year/sign_up_years_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/button_signup.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/enter_grade_body.dart';

class EnterGrade extends StatefulWidget {
  const EnterGrade({super.key});

  @override
  State<EnterGrade> createState() => _EnterGradeState();
}

class _EnterGradeState extends State<EnterGrade> {
  bool thelood = false;
  Widget? child;
  dynamic data;
  String? token;
  @override
  Widget build(BuildContext context) {
    String id;
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        id = BlocProvider.of<SignUpCubit>(context)
            .data[0]['user_data']['id']
            .toString();
        token =
            BlocProvider.of<SignUpCubit>(context).data[0]['user_data']['token'];
      },
      builder: (context, state) {
        id = BlocProvider.of<SignUpCubit>(context)
            .data[0]['user_data']['id']
            .toString();
        token =
            BlocProvider.of<SignUpCubit>(context).data[0]['user_data']['token'];

        return BlocConsumer<PostGradeCubit, PostGradeState>(
          listener: (context, state) {
            id = BlocProvider.of<SignUpCubit>(context)
                .data[0]['user_data']['id']
                .toString();
            if (state is PostGradeSuccess) {
              if (state.data == null) {
                showSnakbar(context, 'please,enter your grade success');
              } else {
                GoRouter.of(context).pop();
                GoRouter.of(context).pop();
                GoRouter.of(context).pop();
                GoRouter.of(context).pop();

                showSnakbar(context, 'Login whith your email now');
              }
            } else if (state is PostGradeLooding) {
            } else if (state is PostGradefailuer) {
              showSnakbar(context, 'Wrong');
            }
          },
          builder: (context, state) {
            id = BlocProvider.of<SignUpCubit>(context)
                .data[0]['user_data']['id']
                .toString();
            data = BlocProvider.of<SignUpYearsCubit>(context).enterGrade;
            if (state is PostGradeLooding) {
              child = const SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  color: AppColors.kLightColor,
                ),
              );
            } else {
              child = Text(
                'Save',
                style: Styles.text16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kLightColor,
                ),
              );
            }
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
              body: Column(
                children: [
                  const Divider(
                    thickness: 1,
                  ),
                  const EnterGradeBody(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    child: ButtonSignUp(
                      child: child!,
                      onTap: () {
                        data[0]['id'] = id;
                        BlocProvider.of<PostGradeCubit>(context)
                            .postGrade(body: data);
                      },
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
