import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/features/suggest_view/data/recommended_model/recommended_model.dart';
import 'package:graduation/features/suggest_view/presentation/manager/cubit/recomended_course_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/auto_suggest_item.dart';

class AutoSuggestListview extends StatefulWidget {
  const AutoSuggestListview({super.key});

  @override
  State<AutoSuggestListview> createState() => _AutoSuggestListviewState();
}

List<RecommendedModel> recommended = [];

class _AutoSuggestListviewState extends State<AutoSuggestListview> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecomendedCourseCubit, RecomendedCourseState>(
      listener: (context, state) {
        recommended =
            BlocProvider.of<RecomendedCourseCubit>(context).recommended;
      },
      builder: (context, state) {
        recommended =
            BlocProvider.of<RecomendedCourseCubit>(context).recommended;
        if (state is RecomendedCourseLooding) {
          return const CircularProgressIndicator();
        } else if (state is RecomendedCourseFailuer) {
          return const Center(
            child: Text('there is an error'),
          );
        } else if (state is RecomendedCourseSuccess) {
          return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => AutoSuggestItem(
                    courseName: recommended[0].output![index].courseName!,
                    drName:
                        "Predected GPA: ${recommended[0].output![index].predictedGpa!}",
                    hours: recommended[0].output![index].credits.toString(),
                    numbreStudent:
                        recommended[0].output![index].students.toString(),
                  ),
              separatorBuilder: (context, index) => const SizedBox(),
              itemCount: recommended[0].output!.length);
        } else {
          return Text('gooo');
        }
      },
    );
  }
}
