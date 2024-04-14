import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class SuggestAppbar extends StatelessWidget {
  const SuggestAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .23,
          ),
          Text(
            'Suggest',
            style: Styles.textstyle18.copyWith(
                color: AppColors.kPrimary, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
