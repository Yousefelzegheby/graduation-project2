import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/cource_title.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/course_item.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/department_item.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/department_title.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/listView_subject.dart';

class Body2 extends StatelessWidget {
  const Body2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: ListViewSubject()),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          DepartmentTitle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DepartmentItem(text1: 'software', text2: 'engineering'),
              DepartmentItem(text1: 'artificial', text2: 'intelligence'),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DepartmentItem(text1: 'computer', text2: 'science'),
              DepartmentItem(text1: 'information', text2: 'technology'),
            ],
          ),
          CourseTitle(),
          CourseItem()
        ],
      ),
    );
  }
}
