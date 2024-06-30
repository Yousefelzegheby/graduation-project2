import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/snakeBar.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/sign_up_view/data/signup_model/signup_model/signup_model.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup/sign_up_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup_year/sign_up_years_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/button_signup.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/custom_signup_item.dart';

class SignUp3ViewBody extends StatefulWidget {
  const SignUp3ViewBody({super.key});

  @override
  State<SignUp3ViewBody> createState() => _SignUp3ViewBodyState();
}

String? year;

final GlobalKey<FormState> formKey = GlobalKey();

class _SignUp3ViewBodyState extends State<SignUp3ViewBody> {
  @override
  Widget build(BuildContext context) {
    Widget? child;
    String? id;
    String? token;
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        id = BlocProvider.of<SignUpCubit>(context)
            .data[0]['user_data']['id']
            .toString();
        token = BlocProvider.of<SignUpCubit>(context)
            .data[0]["access_token"]
            .toString();
        if (state is SignUpSuccess) {}
      },
      builder: (context, state) {
        token = BlocProvider.of<SignUpCubit>(context)
            .data[0]["access_token"]
            .toString();
        id = BlocProvider.of<SignUpCubit>(context)
            .data[0]['user_data']['id']
            .toString();
        if (state is SignUpSuccess) {}
        return BlocConsumer<SignUpYearsCubit, SignUpYearsState>(
          listener: (context, state) {
            id = BlocProvider.of<SignUpCubit>(context)
                .data[0]['user_data']['id']
                .toString();
            if (state is SignUpYearSuccess) {
              if (int.parse(year!) == 1) {
                GoRouter.of(context).pop();
                GoRouter.of(context).pop();
                GoRouter.of(context).pop();
                showSnakbar(context, 'Register complete login now');
              } else {
                GoRouter.of(context).push('/enterGrade');
              }
            } else if (state is SignUpYearLooding) {
            } else if (state is SignUpYearfailuer) {
              showSnakbar(context, 'please try again');
            }
          },
          builder: (context, state) {
            id = BlocProvider.of<SignUpCubit>(context)
                .data[0]['user_data']['id']
                .toString();
            if (state is SignUpYearLooding) {
              child = const SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  color: AppColors.kLightColor,
                ),
              );
            } else {
              child = Text(
                'Next',
                style: Styles.text16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kLightColor,
                ),
              );
            }
            return Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
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
                              'My University Data:',
                              style: Styles.textstyle18.copyWith(
                                color: AppColors.kPrimary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const CustomSignUpItem(
                          text: 'University',
                          hintText: 'university',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const CustomSignUpItem(
                          text: 'Collage',
                          hintText: 'collage',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CustomSignUpItem(
                          text: 'Collage Year',
                          hintText: 'collage year',
                          onchanged: (data) {
                            year = data;
                          },
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .37,
                        ),
                        ButtonSignUp(
                          child: child!,
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              BlocProvider.of<SignUpYearsCubit>(context)
                                  .signUpYear(
                                      grade: year!, id: id!, token: token!);
                              print(token);
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
