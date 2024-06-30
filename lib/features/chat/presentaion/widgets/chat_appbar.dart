import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';

class ChatAppbar extends StatelessWidget {
  const ChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    String image;
    String name;
    return BlocConsumer<LogInCubit, LoginCubitState>(
      listener: (context, state) {
        image = BlocProvider.of<LogInCubit>(context)
            .allproduct[0]
            .userData!
            .profileImg!;
        name =
            BlocProvider.of<LogInCubit>(context).allproduct[0].userData!.name!;
      },
      builder: (context, state) {
        image = BlocProvider.of<LogInCubit>(context)
            .allproduct[0]
            .userData!
            .profileImg!;
        name =
            BlocProvider.of<LogInCubit>(context).allproduct[0].userData!.name!;
        return SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 24,
                      color: AppColors.kPrimary,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .2),
                    child: SizedBox(
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(555),
                            child: SizedBox(
                              height: 50,
                              child: Image.network(
                                '${AssetsPath.apiLink}$image',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            name,
                            style: Styles.textstyle16
                                .copyWith(color: AppColors.kPrimary),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider()
            ],
          ),
        );
      },
    );
  }
}
