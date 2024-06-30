import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';

class MaterialItem extends StatelessWidget {
  const MaterialItem(
      {super.key,
      this.onTap,
      required this.image,
      required this.ciourseName,
      required this.progress});
  final void Function()? onTap;

  final String image;
  final String ciourseName;
  final String progress;
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
                    style: Styles.textstyle16.copyWith(
                      color: AppColors.kPrimary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 9),
                  child: Text(
                    'course',
                    style: Styles.text14.copyWith(
                        color: AppColors.kPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 16,
                          width: 16,
                          child: Image.asset(AssetsPath.clock)),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          "$progress Houres",
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
