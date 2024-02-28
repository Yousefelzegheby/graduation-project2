import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class SuggestView extends StatelessWidget {
  const SuggestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'EL-JOKER',
          style: Styles.text32.copyWith(color: AppColors.kPrimary),
        ),
      ),
    );
  }
}
