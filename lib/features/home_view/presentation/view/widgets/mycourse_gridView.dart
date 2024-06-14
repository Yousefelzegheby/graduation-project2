import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/features/home_view/presentation/manager/cubit/home_view_cubit.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/course_item.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';

class MycourseGridView extends StatelessWidget {
  const MycourseGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<LoginModel>? homeInfo;
    return BlocConsumer<HomeViewCubit, HomeViewState>(
      listener: (context, state) {
        homeInfo = BlocProvider.of<LogInCubit>(context).allproduct;
      },
      builder: (context, state) {
        homeInfo = BlocProvider.of<LogInCubit>(context).allproduct;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              childAspectRatio: .70,
              mainAxisSpacing: 0,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => CourseItem(
              image: homeInfo![0].userCourses![index].courseImage ??
                  'assets/images/gojo.png',
              ciourseName: homeInfo![0].userCourses![index].courseName!,
              progress: homeInfo![0].userCourses![index].progress.toString(),
            ),
          ),
        );
      },
    );
  }
}
