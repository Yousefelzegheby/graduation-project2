import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/styles.dart';

class StudentInfoItem extends StatelessWidget {
  const StudentInfoItem({
    super.key,
    required this.text,
    required this.imag,
  });
  final String text;
  final String imag;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imag),
        const SizedBox(width: 4),
        Text(
          text,
          style: Styles.text16,
        )
      ],
    );
  }
}
