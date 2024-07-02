import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/routers.dart';
import 'package:graduation/features/EditeProfile/presntation/manager/edit_profile/edit_profile_cubit.dart';
import 'package:graduation/features/chat/manager/get/chat_cubit.dart';
import 'package:graduation/features/gpa_page/presentation/msnsger/cubit/gpa_cubit.dart';
import 'package:graduation/features/home_view/presentation/manager/home/home_view_cubit.dart';
import 'package:graduation/features/lec_table_view/presentaions/manager/cubit/material_cubit.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/post_grade/post_grade_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup/sign_up_cubit.dart';
import 'package:graduation/features/sign_up_view/presentation/manager/signup_year/sign_up_years_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/manager/cubit/recomended_course_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/manager/manual/manual_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/manager/suggest/suggest_cubit.dart';

void main() {
  runApp(const GraduationProgect());
}

class GraduationProgect extends StatelessWidget {
  const GraduationProgect({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LogInCubit(),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
        BlocProvider(
          create: (context) => SignUpYearsCubit(),
        ),
        BlocProvider(
          create: (context) => PostGradeCubit(),
        ),
        BlocProvider(
          create: (context) => HomeViewCubit(),
        ),
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
        BlocProvider(
          create: (context) => SuggestCubit(),
        ),
        BlocProvider(
          create: (context) => ManualCubit(),
        ),
        BlocProvider(
          create: (context) => EditProfileCubit(),
        ),
        BlocProvider(
          create: (context) => RecomendedCourseCubit(),
        ),
        BlocProvider(
          create: (context) => MaterialCubit(),
        ),
        BlocProvider(
          create: (context) => GpaCubit(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Poppins',
            appBarTheme: const AppBarTheme(
              color: AppColors.kLightColor,
              elevation: 0,
            )).copyWith(scaffoldBackgroundColor: AppColors.kLightColor),
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
