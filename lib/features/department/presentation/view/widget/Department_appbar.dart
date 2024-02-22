import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';

class DepartmentAppbar extends StatelessWidget {
  const DepartmentAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
      child: Row(children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.kPrimary,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .27,
        ),
        Image.asset(
          'assets/images/logo.png',
          scale: 4,
        ),
      ]),
    );
  }
}
