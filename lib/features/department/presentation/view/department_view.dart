import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/department/presentation/view/widget/Department_appbar.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/department_item.dart';

class DepartmentView extends StatelessWidget {
  const DepartmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DepartmentAppbar(),
          const Divider(
            color: AppColors.kPrimary,
            thickness: .5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text(
                  'Department',
                  style: Styles.textstyle16.copyWith(
                    color: AppColors.kPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                DepartmentItem(text1: 'Software', text2: 'Engieneering'),
                SizedBox(
                  width: 24,
                ),
                DepartmentItem(text1: 'Artificial', text2: 'Intelligance')
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                DepartmentItem(text1: 'Information', text2: 'System'),
                SizedBox(
                  width: 24,
                ),
                DepartmentItem(text1: 'Information', text2: 'Technology')
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                DepartmentItem(text1: 'Computer', text2: 'Science'),
                SizedBox(
                  width: 24,
                ),
                DepartmentItem(text1: 'Bio', text2: 'Informatics'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
