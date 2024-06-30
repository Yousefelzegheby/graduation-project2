import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/features/lec_table_view/presentaions/manager/cubit/material_cubit.dart';
import 'package:graduation/features/login&registerview/data/login_model/login_model.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';
import 'package:graduation/features/material_view/presentaion/widgets/material_item.dart';

class MaterialGridView extends StatelessWidget {
  const MaterialGridView({super.key});
  @override
  Widget build(BuildContext context) {
    List<LoginModel> materialInfo;
    return BlocConsumer<LogInCubit, LoginCubitState>(
      listener: (context, state) {
        materialInfo = BlocProvider.of<LogInCubit>(context).allproduct;
      },
      builder: (context, state) {
        materialInfo = BlocProvider.of<LogInCubit>(context).allproduct;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GridView.builder(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: materialInfo[0].recommendedCourses!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5,
              childAspectRatio: .76,
              mainAxisSpacing: 0,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => MaterialItem(
              onTap: () {
                BlocProvider.of<MaterialCubit>(context).materialFunction(
                    courseName:
                        materialInfo![0].userCourses![index].courseName!);
                GoRouter.of(context).push('/lectableview');
              },
              image: materialInfo[0].recommendedCourses![index].courseImage!,
              ciourseName:
                  materialInfo[0].recommendedCourses![index].courseName!,
              progress: materialInfo[0]
                  .recommendedCourses![index]
                  .creditHours
                  .toString(),
            ),
          ),
        );
      },
    );
  }
}
