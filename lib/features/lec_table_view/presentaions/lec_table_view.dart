import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/lec_table_view/presentaions/widgets/lectures_table_items.dart';
import 'package:graduation/features/lec_table_view/presentaions/widgets/title_page_lec.dart';
import 'package:graduation/features/subject_view/presntaion/widgets/title_page.dart';

class LecTableView extends StatelessWidget {
  const LecTableView({super.key});

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
      body: Column(
        children: [
          const Divider(),
          const TitlePageLec(
            titlel: "My Courses",
          ),
          LecturestableItemWidget(
            onTap: () {},
            title: "First year lecture schedule",
          ),
          LecturestableItemWidget(
            onTap: () {},
            title: "Second year lecture schedule",
          ),
          LecturestableItemWidget(
            onTap: () {},
            title: "Third year lecture schedule",
          ),
          LecturestableItemWidget(
            onTap: () {},
            title: "Fourth year lecture schedule",
          ),
        ],
      ),
    );
  }
}
