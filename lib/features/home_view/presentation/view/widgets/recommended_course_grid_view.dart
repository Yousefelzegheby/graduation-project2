import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/features/home_view/data/home_information/home_information.dart';
import 'package:graduation/features/home_view/presentation/manager/home/home_view_cubit.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/recommended_course_Item.dart';
import 'package:graduation/features/lec_table_view/presentaions/manager/cubit/material_cubit.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';

class RecommendedCourseGridView extends StatefulWidget {
  const RecommendedCourseGridView({super.key});

  @override
  State<RecommendedCourseGridView> createState() =>
      _RecommendedCourseGridViewState();
}

class _RecommendedCourseGridViewState extends State<RecommendedCourseGridView> {
  @override
  Widget build(BuildContext context) {
    List<LoginModel> homeInfo;
    return BlocConsumer<LogInCubit, LoginCubitState>(
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
            itemCount: homeInfo[0].recommendedCourses!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              childAspectRatio: .85,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => RecomendedCourseItem(
              onTap: () {
                BlocProvider.of<MaterialCubit>(context).materialFunction(
                    courseName: homeInfo[0].userCourses![index].courseName!);
                GoRouter.of(context).push('/lectableview');
              },
              image: homeInfo[0].recommendedCourses![index].courseImage!,
              progress:
                  homeInfo[0].recommendedCourses![index].creditHours.toString(),
              ciourseName: homeInfo[0].recommendedCourses![index].courseName!,
            ),
          ),
        );
      },
    );
  }
}
