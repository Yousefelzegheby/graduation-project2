import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/slider.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .4,
            decoration: const BoxDecoration(
              color: Color(0xffDBE3E8),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/image course.png'),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Text(
                    'computer science,',
                    style: Styles.textstyle16.copyWith(
                      color: AppColors.kPrimary,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 7),
                  child: Text(
                    'course',
                    style: Styles.text14.copyWith(
                        color: AppColors.kPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Text(
                    'Overall progress 80%',
                    style: Styles.text14.copyWith(
                        color: AppColors.kPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
                const Slide()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
