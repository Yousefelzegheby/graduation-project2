import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/slider.dart';

class CourseViewItem extends StatelessWidget {
  const CourseViewItem(
      {super.key,
      required this.image,
      required this.ciourseName,
      required this.progress,
      required this.value1,
      this.onTap});
  final String image;
  final String ciourseName;
  final String progress;
  final double value1;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(children: [
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
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
                child: Image.network(
                  '${AssetsPath.apiLink}$image',
                  scale: .5,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  ciourseName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textstyle16.copyWith(
                    color: AppColors.kPrimary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 7),
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
                  'Overall progress$progress%',
                  style: Styles.text14.copyWith(
                      color: AppColors.kPrimary,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
              Slide(
                value1: value1,
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
