import 'package:flutter/material.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/course_item.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/recommended_course_Item.dart';
import 'package:graduation/features/search/view/widget/coursesitems.dart';

class customGridView extends StatefulWidget {
  const customGridView({super.key});

  @override
  State<customGridView> createState() => _customGridViewState();
}

class _customGridViewState extends State<customGridView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: GridView.builder(
        clipBehavior: Clip.none,
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => const coursesitemwidget(),
      ),
    );
  }
}
