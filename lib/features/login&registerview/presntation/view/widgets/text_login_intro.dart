import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class TextLoginIntro extends StatelessWidget {
  const TextLoginIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Text(
            "By creating an account,you accept academix's",
            style: Styles.text14,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Terms of Services and Privacy Policy",
                style: Styles.text14.copyWith(color: AppColors.kPrimary),
              ),
            ],
          ),
        )
      ],
    );
  }
}
