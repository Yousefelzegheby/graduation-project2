import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/EditeProfile/presntation/view/widget/Edite-Profile-Body.dart';

class EditeProfile extends StatelessWidget {
  const EditeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.kPrimary,
            )),
        title: Text(
          "Settings",
          style: Styles.textstyle24.copyWith(color: AppColors.kPrimary),
        ),
        centerTitle: true,
      ),
      body: const SafeArea(child: EditeProfileBody()),
    );
  }
}
