import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/snakeBar.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/core/widgets/custom_button.dart';
import 'package:graduation/core/widgets/custom_text_form_feild.dart';
import 'package:graduation/features/login&registerview/presntation/view/widgets/custom_textfeild_passward.dart';
import 'package:graduation/features/login&registerview/presntation/view/widgets/text_login_intro.dart';
import 'package:graduation/features/sign_up_view/data/signup_model/signup_model/signup_model.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup/sign_up_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

GlobalKey<FormState> formkey = GlobalKey();
final TextEditingController controllerEmail = TextEditingController();
final TextEditingController controllerpass = TextEditingController();
final TextEditingController firistName = TextEditingController();
final TextEditingController lastName = TextEditingController();
String? firist;
String? last;
String? email;
String? password;
bool looding = false;

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          if (state.data[0]['access_token'] != null && state.data != null) {
            looding = false;
            controllerEmail.clear();
            controllerpass.clear();
            firistName.clear();
            lastName.clear();
            GoRouter.of(context).push('/signup2');
          } else if (state.data == null) {
            showSnakbar(context, 'email already register');
            looding = false;
          }
        } else if (state is SignUpLooding) {
          looding = true;
        } else if (state is SignUpFailuer) {
          showSnakbar(
              context, 'email has been registered or passowrd less than 6');
          looding = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: looding,
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
                        height: 32,
                      ),
                      Row(
                        children: [
                          Text(
                            'Create Your Account',
                            style: Styles.textstyle20.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.kPrimary,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .42,
                            child: CustomTextFormFeild(
                              controller: firistName,
                              color: AppColors.kGray,
                              hintText: 'firist name',
                              label: const Text('firist name'),
                              onchanged: (data) {
                                firist = data;
                              },
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .43,
                            child: CustomTextFormFeild(
                              controller: lastName,
                              color: AppColors.kGray,
                              hintText: 'last name',
                              label: const Text('last name'),
                              onchanged: (data) {
                                last = data;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
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
                        height: 32,
                      ),
                      CustomButton(
                          textColor: AppColors.kLightColor,
                          fontsize: 16,
                          theText: 'Sign Up',
                          onpressed: () {
                            if (formkey.currentState!.validate()) {
                              BlocProvider.of<SignUpCubit>(context).signUpNew(
                                  firist: firist!,
                                  last: last!,
                                  email: email!,
                                  password: password!);
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
                          GoRouter.of(context).pop();
                        },
                        child: Text(
                          'Log In',
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
