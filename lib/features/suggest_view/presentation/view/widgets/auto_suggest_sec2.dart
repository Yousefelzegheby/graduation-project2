import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/styles.dart';

class AutoSuggestSec2 extends StatelessWidget {
  const AutoSuggestSec2(
      {super.key, required this.hours, required this.numbreStudent});
  final String hours;
  final String numbreStudent;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/clock_4725362 1.png'),
        const SizedBox(
          width: 2.5,
        ),
        Text(
          '$hours Hours',
          style:
              Styles.text14PrimaryColor.copyWith(fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: 16,
        ),
        Image.asset('assets/images/Group.png'),
        const SizedBox(
          width: 2.5,
        ),
        Text(
          numbreStudent,
          style:
              Styles.text14PrimaryColor.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
