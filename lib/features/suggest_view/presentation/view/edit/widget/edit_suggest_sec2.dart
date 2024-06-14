import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/styles.dart';

class EditSuggestSec2 extends StatelessWidget {
  const EditSuggestSec2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/clock_4725362 1.png'),
        const SizedBox(
          width: 2.5,
        ),
        Text(
          '20 Hours',
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
          '200',
          style:
              Styles.text14PrimaryColor.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
