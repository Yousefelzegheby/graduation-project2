import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/button_signup.dart';
import 'package:graduation/features/sign_up_view/presentation/views/widgets/custom_signup_item.dart';

class SignUp3ViewBody extends StatelessWidget {
  const SignUp3ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();
    return Form(
      key: formKey,
      child: Expanded(
        child: SingleChildScrollView(
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
                const CustomSignUpItem(
                  text: 'Collage Year',
                  hintText: 'collage year',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .37,
                ),
                ButtonSignUp(
                  text: 'Next',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      GoRouter.of(context).push('/enterGrade');
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
