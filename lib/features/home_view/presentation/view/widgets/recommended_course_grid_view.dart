import 'package:flutter/material.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/recommended_course_Item.dart';

class RecommendedCourseGridView extends StatefulWidget {
  const RecommendedCourseGridView({super.key});

  @override
  State<RecommendedCourseGridView> createState() =>
      _RecommendedCourseGridViewState();
}

class _RecommendedCourseGridViewState extends State<RecommendedCourseGridView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          childAspectRatio: .76,
          mainAxisSpacing: 0,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => const RecomendedCourseItem(),
      ),
    );
    ;
  }
}
