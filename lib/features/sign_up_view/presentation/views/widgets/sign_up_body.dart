import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/core/widgets/custom_button.dart';
import 'package:graduation/core/widgets/custom_text_form_feild.dart';
import 'package:graduation/features/login&registerview/presntation/view/widgets/custom_textfeild_passward.dart';
import 'package:graduation/features/login&registerview/presntation/view/widgets/forget_passward.dart';
import 'package:graduation/features/login&registerview/presntation/view/widgets/text_login_intro.dart';

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
String? email;
String? password;

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return Form(
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
                      width: MediaQuery.of(context).size.width * .4,
                      child: const CustomTextFormFeild(
                        color: AppColors.kGray,
                        hintText: 'firist name',
                        label: Text('firist name'),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .4,
                      child: const CustomTextFormFeild(
                        color: AppColors.kGray,
                        hintText: 'last name',
                        label: Text('last name'),
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
                      if (formkey.currentState!.validate()) {}
                    },
                    backgroundColor: AppColors.kPrimary),
                const SizedBox(
                  height: 16,
                ),
                const TextLoginIntro(),
                SizedBox(height: MediaQuery.of(context).size.height * .09),
                Text(
                  'Already a member?',
                  style:
                      Styles.textstyle16.copyWith(fontWeight: FontWeight.w400),
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: Text(
                    'Log In',
                    style: Styles.textstyle16.copyWith(
                        fontWeight: FontWeight.w700, color: AppColors.kPrimary),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
