import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/api_services.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/snakeBar.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/core/widgets/custom_button.dart';
import 'package:graduation/core/widgets/custom_text_form_feild.dart';
import 'package:graduation/features/EditeProfile/presntation/manager/edit_profile/edit_profile_cubit.dart';
import 'package:graduation/features/EditeProfile/presntation/view/widget/Text-failed-profile.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';

class EditeProfileBody extends StatelessWidget {
  const EditeProfileBody({super.key});
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> key = GlobalKey();
    String? oldPass;
    String? newPass;
    String? confirmPass;
    List<LoginModel> data;
    Widget button = Text('save');
    return BlocConsumer<LogInCubit, LoginCubitState>(
      listener: (context, state) {
        data = BlocProvider.of<LogInCubit>(context).allproduct;
      },
      builder: (context, state) {
        data = BlocProvider.of<LogInCubit>(context).allproduct;
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
                    child: Image.network(
                      '${AssetsPath.apiLink}${data[0].userData!.profileImg}',
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
                "${data[0].userData!.name}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textstyle24.copyWith(
                    color: AppColors.kPrimary, fontWeight: FontWeight.w700),
              ),
              Text(
                '${data[0].userData!.email}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.text16.copyWith(fontSize: 12),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                child: BlocConsumer<EditProfileCubit, EditProfileState>(
                  listener: (context, state) {
                    if (state is EditProfileSuccess) {
                      GoRouter.of(context).pop();
                      showSnakbar(context, 'your changes is saved');
                    } else if (state is EditProfileFailuer) {
                      showSnakbar(context, state.failuer);
                    }
                  },
                  builder: (context, state) {
                    // if(state is EditProfileLodding)
                    return Form(
                      key: key,
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
                                    child: Image.asset(
                                        'assets/images/Polygon 1.png')),

                                hint: "Country",
                                wideth: 150,
                              ),
                              const Spacer(),
                              TextFeildProfile(
                                imageicon: GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                        'assets/images/Polygon 1.png')),
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
                          CustomTextFormFeild(
                            hintText: 'old password',
                            onchanged: (value) {
                              oldPass = value;
                            },
                            color: AppColors.kGray,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextFormFeild(
                            hintText: 'new password',
                            onchanged: (value) {
                              newPass = value;
                            },
                            color: AppColors.kGray,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextFormFeild(
                            hintText: 'confirm password',
                            onchanged: (value) {
                              confirmPass = value;
                            },
                            color: AppColors.kGray,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const SizedBox(height: 10),
                          CustomButton(
                              textColor: AppColors.kLightColor,
                              fontsize: 16,
                              theText: 'Save Changes',
                              onpressed: () {
                                if (key.currentState!.validate()) {
                                  if (newPass == confirmPass) {
                                    BlocProvider.of<EditProfileCubit>(context)
                                        .editPassword(
                                            token: data[0].accessToken!,
                                            newPassword: newPass!,
                                            oldPass: oldPass!);
                                  } else {
                                    showSnakbar(context,
                                        'new pass not equal confirm pass');
                                  }
                                }
                              },
                              backgroundColor: AppColors.kPrimary)
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
