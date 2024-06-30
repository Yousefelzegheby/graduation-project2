import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/features/lec_table_view/presentaions/manager/cubit/material_cubit.dart';
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
              onTap: () {
                BlocProvider.of<MaterialCubit>(context).materialFunction(
                    courseName:
                        myCourseInfo![0].userCourses![index].courseName!);
                GoRouter.of(context).push('/lectableview');
              },
              value1: myCourseInfo[0].userCourses![index].progress!.toDouble(),
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
