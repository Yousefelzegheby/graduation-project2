import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/auto_suggest_sec1.dart';

class AutoSuggestItem extends StatelessWidget {
  const AutoSuggestItem(
      {super.key,
      required this.hours,
      required this.numbreStudent,
      required this.courseName,
      required this.drName,
      this.gpa});
  final String hours;
  final String numbreStudent;
  final String courseName;
  final String drName;
  final String? gpa;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFB5C4D0)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              child: Image.asset('assets/images/courses.png'),
            ),
            const SizedBox(
              width: 12,
            ),
            AutoSuggestSec1(
              courseName: courseName,
              drName: drName,
              hours: hours,
              numbreStudent: numbreStudent,
            ),
          ],
        ),
      ),
    );
  }
}
