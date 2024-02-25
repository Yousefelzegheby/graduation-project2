import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/routers.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';

void main() {
  runApp(const GraduationProgect());
}

class GraduationProgect extends StatelessWidget {
  const GraduationProgect({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInCubit(),
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
