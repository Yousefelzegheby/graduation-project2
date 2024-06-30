import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/Bookmark/presentation/view/widget/customtext.dart';
import 'package:graduation/features/search/view/widget/custom_bookmark.dart';

class Customitem extends StatelessWidget {
  const Customitem({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.kGray, width: 1),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              "assets/images/courses.png",
              scale: 4,
            ),
            const SizedBox(
              width: 16,
            ),
            const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customtext(
                    text: 'Introduction to UI&UX',
                    fontfamily: 'Poppins-Bold.ttf',
                    size: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppColors.kPrimary,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      customtext(
                        text: 'Michael Worthington ',
                        fontfamily: 'Poppins-regular.ttf',
                        size: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: AppColors.kPrimary,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      customtext(
                        text: '20 Hours',
                        fontfamily: 'Poppins-Bold.ttf',
                        size: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ]),

            // custom_bookmark(),
          ]),
        ),
      ),
    );
  }
}
