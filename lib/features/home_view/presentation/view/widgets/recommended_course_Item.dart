import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';

class RecomendedCourseItem extends StatelessWidget {
  const RecomendedCourseItem(
      {super.key,
      required this.image,
      required this.ciourseName,
      required this.progress,
      this.onTap});
  final String image;
  final String ciourseName;
  final String progress;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .4,
            decoration: const BoxDecoration(
                color: Color(0xffDBE3E8),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  child: Image.network('${AssetsPath.apiLink}$image'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6, top: 7),
                  child: Text(
                    ciourseName,
                    style: Styles.textstyle16.copyWith(
                      color: AppColors.kPrimary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
                  padding: const EdgeInsets.only(
                      left: 6, right: 6, bottom: 10, top: 8),
                  child: Row(
                    children: [
                      Image.asset('assets/images/clock_4725362 1.png'),
                      const SizedBox(
                        width: 2.5,
                      ),
                      Text('$progress hours',
                          style: Styles.text14.copyWith(
                              color: AppColors.kPrimary,
                              fontWeight: FontWeight.w400,
                              fontSize: 12)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
