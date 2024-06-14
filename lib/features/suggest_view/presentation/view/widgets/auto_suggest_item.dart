import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/auto_suggest_sec1.dart';

class AutoSuggestItem extends StatelessWidget {
  const AutoSuggestItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Container(
        height: 112,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFB5C4D0)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              child: Image.asset('assets/images/courses.png'),
            ),
            const SizedBox(
              width: 12,
            ),
            const AutoSuggestSec1(),
            SizedBox(
              width: MediaQuery.of(context).size.width * .13,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                    color: AppColors.kPrimary,
                    borderRadius: BorderRadius.circular(555)),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: AppColors.kLightColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
