import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';

import 'package:graduation/features/search/view/courses.dart';
import 'package:graduation/features/search/view/mentors.dart';

class CustomTabBarsearch extends StatefulWidget {
  const CustomTabBarsearch({super.key});

  @override
  State<CustomTabBarsearch> createState() => _CustomTabBarsearchState();
}

class _CustomTabBarsearchState extends State<CustomTabBarsearch> {
  // List<Widget> pages = const [MessageScreen(), NotificationScreen()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.kPrimary,
                )),
            bottom: const TabBar(
              labelStyle: TextStyle(
                fontFamily: 'Poppins-Bold.ttf',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              tabs: [Tab(text: "Courses"), Tab(text: "Mentors")],
              indicatorColor: AppColors.kPrimary,
              labelColor: AppColors.kPrimary,
              unselectedLabelColor: AppColors.kGray,
            ),
          ),
          body: const TabBarView(children: [CoursesBody(), MentorsBody()])),
    );
  }
}
