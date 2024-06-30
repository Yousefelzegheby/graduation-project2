import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';

class Slide extends StatelessWidget {
  const Slide({super.key, required this.value1});

  final double value1;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData(
        disabledThumbColor: AppColors.kPrimary,
      ),
      child: Slider(
        inactiveColor: AppColors.blueWhite,
        min: 0.0,
        max: 100.0,
        value: value1,
        divisions: 100,
        onChanged: null,
      ),
    );
  }
}
