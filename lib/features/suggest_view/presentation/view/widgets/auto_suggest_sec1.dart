import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/auto_suggest_sec2.dart';

class AutoSuggestSec1 extends StatelessWidget {
  const AutoSuggestSec1(
      {super.key,
      required this.hours,
      required this.numbreStudent,
      required this.courseName,
      required this.drName});

  final String hours;
  final String numbreStudent;
  final String courseName;
  final String drName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 170,
          child: Text(
            courseName,
            style: Styles.text16.copyWith(
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          drName,
          style: Styles.text16.copyWith(fontWeight: FontWeight.w600),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 7,
        ),
        AutoSuggestSec2(
          hours: hours,
          numbreStudent: numbreStudent,
        ),
      ],
    );
  }
}
