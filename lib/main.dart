import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/routers.dart';
void main() {
  runApp(const GraduationProgect());
}

class GraduationProgect extends StatelessWidget {
  const GraduationProgect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
          appBarTheme: const AppBarTheme(
        color: AppColors.kLightColor,
        elevation: 0,
      )).copyWith(scaffoldBackgroundColor: AppColors.kLightColor),
      routerConfig: AppRoutes.router,
    );
  }
}
