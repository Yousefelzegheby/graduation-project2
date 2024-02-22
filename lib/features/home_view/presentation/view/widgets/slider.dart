import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  double value1 = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      inactiveColor: AppColors.kLightColor,
      activeColor: AppColors.kPrimary,
      value: value1,
      max: 100,
      divisions: 1,
      onChanged: (double value) {
        setState(() {
          value1 = value;
        });
      },
    );
  }
}
