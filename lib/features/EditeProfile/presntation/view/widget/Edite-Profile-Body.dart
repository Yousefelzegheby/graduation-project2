import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/core/widgets/custom_button.dart';
import 'package:graduation/features/EditeProfile/presntation/view/widget/Text-failed-profile.dart';

class EditeProfileBody extends StatelessWidget {
  const EditeProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Divider(height: 1),
          const SizedBox(height: 24),
          Center(
            child: Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(555),
                child: Image.asset(
                  'assets/images/gojo.png',
                  height: 128,
                ),
              ),
              Positioned(
                bottom: 9,
                right: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      color: const Color(0xffB5C4D0),
                      child: Image.asset(
                        'assets/images/plus.png',
                        height: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(height: 8),
          Text(
            "Fahd Mahmoud",
            style: Styles.textstyle24.copyWith(
                color: AppColors.kPrimary, fontWeight: FontWeight.w700),
          ),
          Text(
            'fahd@gmail.com',
            style: Styles.text16.copyWith(fontSize: 12),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            child: Column(
              children: [
                const TextFeildProfile(hint: "Full Name"),
                const SizedBox(height: 16),
                const TextFeildProfile(hint: "Country"),
                const SizedBox(height: 16),
                const TextFeildProfile(hint: "Phone Number"),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    TextFeildProfile(
                      // imageicon: Container(),
                      imageicon: GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/images/Polygon 1.png')),

                      hint: "Country",
                      wideth: 150,
                    ),
                    const Spacer(),
                    TextFeildProfile(
                      imageicon: GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/images/Polygon 1.png')),
                      hint: "Gender",
                      wideth: 150,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Change Password',
                      style: Styles.textstyle20.copyWith(
                          color: AppColors.kPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const TextFeildProfile(hint: "current password"),
                const SizedBox(
                  height: 16,
                ),
                const TextFeildProfile(hint: "new password"),
                const SizedBox(
                  height: 16,
                ),
                const TextFeildProfile(hint: "confirm password"),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(height: 10),
                CustomButton(
                    textColor: AppColors.kLightColor,
                    fontsize: 16,
                    theText: 'Save Changes',
                    onpressed: () {},
                    backgroundColor: AppColors.kPrimary)
              ],
            ),
          )
        ],
      ),
    );
  }
}
