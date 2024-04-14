import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';

class customtext extends StatelessWidget {
  const customtext({
    super.key,
    required this.text,
    required this.fontfamily,
    required this.size,
    required this.fontWeight,
  });
  final String text;
  final String fontfamily;
  final double size;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: AppColors.kPrimary,
          fontFamily: fontfamily,
          fontSize: size,
          fontWeight: fontWeight,
        ));
  }
}
