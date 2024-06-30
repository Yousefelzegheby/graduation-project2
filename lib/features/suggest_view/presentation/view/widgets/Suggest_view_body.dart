import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/snakeBar.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/manager/manual/manual_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/button_suggest.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/suggest_listview.dart';

class SuggestManualViewBody extends StatelessWidget {
  const SuggestManualViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManualCubit, ManualState>(
      listener: (context, state) {
        if (state is ManualSuccess) {
          if (state.data != null) {
            showSnakbar(context, 'you are enroll now');
          }
        } else if (state is ManualLooding) {
        } else if (state is ManualFailuer) {
          showSnakbar(context, 'please try agin,${state.error}');
        }
      },
      builder: (context, state) {
        if (state is ManualLooding) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.kPrimary,
            ),
          );
        } else {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const SuggestListview(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonSuggest(
                        textColor: AppColors.kLightColor,
                        backColor: AppColors.kPrimary,
                        textButton: 'Save',
                        onTap: () {
                          BlocProvider.of<ManualCubit>(context).postCourseName(
                              token: BlocProvider.of<LogInCubit>(context)
                                  .allproduct[0]
                                  .accessToken!);
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  )
                ],
              ))
            ],
          );
        }
      },
    );
  }
}
