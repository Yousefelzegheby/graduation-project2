import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';

class HpmeAppbar extends StatelessWidget {
  const HpmeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    List<LoginModel> homeInfo;
    return BlocConsumer<LogInCubit, LoginCubitState>(
      listener: (context, state) {
        homeInfo = BlocProvider.of<LogInCubit>(context).allproduct;
      },
      builder: (context, state) {
        homeInfo = BlocProvider.of<LogInCubit>(context).allproduct;
        // String image =
        //     '{AssetsPath.apiLink}/${homeInfo[0].userData!.profileImg}';
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(555),
                  child: Image.network(
                    '${AssetsPath.apiLink}${homeInfo[0].userData!.profileImg}',
                    height: 48,
                    width: 48,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome To Acadeimx",
                      style: Styles.text14.copyWith(
                          color: AppColors.kPrimary,
                          fontWeight: FontWeight.w700),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .47,
                      child: Text(
                        homeInfo[0].userData!.name!,
                        style: Styles.text14.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.kPrimary),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        // textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push('/searchview');
                  },
                  child: Image.asset('assets/images/search.png'),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push('/customtabbar');
                  },
                  child: Image.asset('assets/images/notification.png'),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
