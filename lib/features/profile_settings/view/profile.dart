import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/core/widgets/custom_button_nav_bar.dart';
import 'package:graduation/features/profile_settings/view/widget/profile-body.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

int current = 0;

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
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
      body: const SafeArea(child: ProfileBodey()),
    );
  }
}
