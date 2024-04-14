import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/core/widgets/custom_button.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';
import 'package:graduation/features/profile_settings/view/widget/StudentInfoItem.dart';

class Section1Settings extends StatelessWidget {
  const Section1Settings({super.key});

  @override
  Widget build(BuildContext context) {
    List<LoginModel> settingInfo;
    return BlocConsumer<LogInCubit, LoginCubitState>(
      listener: (context, state) {
        settingInfo = BlocProvider.of<LogInCubit>(context).allproduct;
      },
      builder: (context, state) {
        settingInfo = BlocProvider.of<LogInCubit>(context).allproduct;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      '${AssetsPath.apiLink}${settingInfo[0].userData!.profileImg}',
                      height: 72,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        settingInfo[0].userData!.name!,
                        style: Styles.textstyle24
                            .copyWith(color: AppColors.kPrimary),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        settingInfo[0].userData!.name!,
                        style:
                            Styles.text16.copyWith(fontWeight: FontWeight.w400),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 18),
              Text('College Student',
                  style: Styles.textstyle20.copyWith(
                      color: AppColors.kPrimary, fontWeight: FontWeight.w400)),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StudentInfoItem(
                    text: 'Mansoura University',
                    imag: 'assets/images/buliding.png',
                  ),
                  StudentInfoItem(
                    text: 'Mansoura',
                    imag: 'assets/images/location.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              StudentInfoItem(
                text: settingInfo[0].userData!.email!,
                imag: 'assets/images/massage.png',
              ),
              const SizedBox(height: 24),
              CustomButton(
                textColor: AppColors.kLightColor,
                fontsize: 16,
                theText: 'Edit',
                onpressed: () {
                  GoRouter.of(context).push('/editprofileSetting');
                },
                backgroundColor: AppColors.kPrimary,
              ),
              const SizedBox(height: 24)
            ],
          ),
        );
      },
    );
  }
}
