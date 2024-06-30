import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/snakeBar.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/core/widgets/custom_button.dart';
import 'package:graduation/core/widgets/custom_text_form_feild.dart';
import 'package:graduation/features/home_view/presentation/manager/home/home_view_cubit.dart';
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
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerpass = TextEditingController();
  bool lood = false;
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LoginCubitState>(
      listener: (context, state) {
        if (state is LogInCubitSucssess) {
          lood = false;
          if (state.data[0].accessToken != null) {
            GoRouter.of(context).push('/customnavbar');
            controllerEmail.clear();
            controllerpass.clear();
          } else {
            showSnakbar(context, 'wrong password or e-mail');
          }
        } else if (state is LogInCubitFailuer) {
          lood = false;
          showSnakbar(context, 'wrong email or password');
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
                          controller: controllerEmail,
                          keyboardType: TextInputType.emailAddress,
                          label: const Text('E-mail(Required)'),
                          onchanged: (data) {
                            email = data;
                          },
                          color: AppColors.kGray,
                          hintText: 'E-mail(Required)'),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomTextFeildPassward(
                        controller: controllerpass,
                        onchanged: (data) {
                          password = data;
                        },
                      ),
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
                              // GoRouter.of(context).push('/customnavbar');

                              BlocProvider.of<LogInCubit>(context)
                                  .postPasswardAndEmail(
                                email: email!,
                                password: password!,
                              );
                            }
                          },
                          backgroundColor: AppColors.kPrimary),
                      const SizedBox(
                        height: 16,
                      ),
                      const TextLoginIntro(),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .09),
                      Text(
                        'Already a member?',
                        style: Styles.textstyle16
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push('/signup');
                        },
                        child: Text(
                          'Sign Up',
                          style: Styles.textstyle16.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.kPrimary),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
