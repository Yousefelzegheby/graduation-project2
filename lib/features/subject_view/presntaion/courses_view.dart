import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/subject_view/presntaion/widgets/courses_grid_view.dart';
import 'package:graduation/features/subject_view/presntaion/widgets/title_page.dart';

class SubjectView extends StatelessWidget {
  const SubjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
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
          title: SizedBox(
              height: 67,
              child: Image.asset(
                AssetsPath.logo,
                fit: BoxFit.cover,
              )),
          centerTitle: true,
          toolbarHeight: 88),
      body: ListView(
        children: const [
          Divider(),
          TitlePage(
            titlel: "My Courses",
          ),
          CoursesGridView()
        ],
      ),
    );
  }
}
