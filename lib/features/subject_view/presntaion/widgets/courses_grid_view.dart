import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';
import 'package:graduation/features/subject_view/presntaion/widgets/course_view_item.dart';

class CoursesGridView extends StatelessWidget {
  const CoursesGridView({super.key});
  @override
  Widget build(BuildContext context) {
    List<LoginModel> myCourseInfo;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: BlocConsumer<LogInCubit, LoginCubitState>(
        listener: (context, state) {
          myCourseInfo = BlocProvider.of<LogInCubit>(context).allproduct;
        },
        builder: (context, state) {
          myCourseInfo = BlocProvider.of<LogInCubit>(context).allproduct;
          return GridView.builder(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              childAspectRatio: .67,
              mainAxisSpacing: 0,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => CourseViewItem(
              image: myCourseInfo[0].userCourses![index].courseImage!,
              ciourseName: myCourseInfo[0].userCourses![index].courseName!,
              progress: myCourseInfo[0].userCourses![index].progress.toString(),
            ),
          );
        },
      ),
    );
  }
}
