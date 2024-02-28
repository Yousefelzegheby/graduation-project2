import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/slider.dart';

class MaterialItem extends StatelessWidget {
  const MaterialItem({super.key, this.onTap, this.text});
  final void Function()? onTap;
  final String? text;
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
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 16,
                          width: 16,
                          child: Image.asset(AssetsPath.clock)),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "20 Houres",
                          style: Styles.text14PrimaryColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
