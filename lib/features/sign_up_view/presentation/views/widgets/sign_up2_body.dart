import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/button_signup.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/custom_signup_item.dart';

class SignUp2Body extends StatelessWidget {
  const SignUp2Body({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formkey = GlobalKey();
    return Expanded(
      child: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'My Personal Data:',
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
                  text: 'Full Name',
                  hintText: 'full name',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomSignUpItem(
                  text: 'Phone Number',
                  hintText: 'phone number',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomSignUpItem(
                  text: 'Gender',
                  hintText: 'gender',
                  prefix: Icons.arrow_drop_down,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomSignUpItem(
                  text: 'Nationality',
                  hintText: 'nationality',
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                ),
                ButtonSignUp(
                  child: Text(
                    'Next',
                    style: Styles.text16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.kLightColor,
                    ),
                  ),
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      GoRouter.of(context).push('/signup3');
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
