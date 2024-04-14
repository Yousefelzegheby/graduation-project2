import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';
import 'package:graduation/features/profile_settings/view/widget/Section1Settings.dart';
import 'package:graduation/features/profile_settings/view/widget/Section2Settings.dart';
import 'package:graduation/features/profile_settings/view/widget/setting_list_view.dart';

class ProfileBodey extends StatelessWidget {
  const ProfileBodey({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            children: [
              Divider(
                height: 1,
              ),
              Section1Settings(),
              Divider(
                thickness: 2,
              ),
              Section2Settings(),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SetingListView(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                    BlocProvider.of<LogInCubit>(context).allproduct.clear();
                    print(BlocProvider.of<LogInCubit>(context).allproduct);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/signout.png'),
                          const SizedBox(width: 6),
                          Text(
                            'Sign Out',
                            style: Styles.textstyle24
                                .copyWith(color: AppColors.kPrimary),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.kPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
