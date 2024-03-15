import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/search/view/widget/customgridview.dart';

class CoursesBody extends StatelessWidget {
  const CoursesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: customGridView());
  }
}
