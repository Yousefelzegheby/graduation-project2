import 'package:flutter/cupertino.dart';
import 'package:graduation/core/utiles/styles.dart';

class ListViewItemSec2 extends StatelessWidget {
  const ListViewItemSec2(
      {super.key, required this.numberStudent, required this.numbreHour});
  final String numberStudent;
  final String numbreHour;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/clock_4725362 1.png'),
        const SizedBox(
          width: 2.5,
        ),
        Text(
          '$numbreHour Hours',
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
          numberStudent,
          style:
              Styles.text14PrimaryColor.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
