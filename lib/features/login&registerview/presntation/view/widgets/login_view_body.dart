import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/snakeBar.dart';
import 'package:graduation/core/widgets/custom_button.dart';
import 'package:graduation/core/widgets/custom_text_form_feild.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';
import 'package:graduation/features/login&registerview/presntation/view/widgets/custom_textfeild_passward.dart';
import 'package:graduation/features/login&registerview/presntation/view/widgets/text_login_intro.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'forget_passward.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  String? email;
  String? password;
  bool lood = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInCubit(),
      child: BlocConsumer<LogInCubit, LoginCubitState>(
        listener: (context, state) {
          if (state is LogInCubitSucssess) {
            lood = false;
            if (state.data == true) {
              GoRouter.of(context).push('/customnavbar');
            } else {
              showSnakbar(context, 'wrong password or e-mail');
            }
          } else if (state is LogInCubitFailuer) {
            lood = false;
            showSnakbar(context, 'wrong from server');
          } else if (state is LogInCubitLooding) {
            lood = true;
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: lood,
            child: Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(AssetsPath.logo),
                        const SizedBox(
                          height: 48,
                        ),
                        CustomTextFormFeild(
                            keyboardType: TextInputType.emailAddress,
                            label: const Text('E-mail(Required)'),
                            onsaved: (data) {
                              email = data;
                            },
                            onchanged: (data) {
                              email = data;
                            },
                            color: AppColors.kGray,
                            hintText: 'E-mail(Required)'),
                        const SizedBox(
                          height: 16,
                        ),
                        const CustomTextFeildPassward(),
                        const SizedBox(
                          height: 16,
                        ),
                        ForgetPassward(
                          onTap: () {
                            GoRouter.of(context).push('/ForgetView');
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        CustomButton(
                            textColor: AppColors.kLightColor,
                            fontsize: 16,
                            theText: 'Log In',
                            onpressed: () async {
                              if (formkey.currentState!.validate()) {
                                BlocProvider.of<LogInCubit>(context)
                                    .postPasswardAndEmail(
                                  email: email!,
                                  password: BlocProvider.of<LogInCubit>(context)
                                      .password!,
                                );
                              }
                            },
                            backgroundColor: AppColors.kPrimary),
                        const SizedBox(
                          height: 16,
                        ),
                        const TextLoginIntro()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
