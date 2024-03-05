import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class HpmeAppbar extends StatelessWidget {
  const HpmeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(555),
              child: Image.asset(
                "assets/images/gojo.png",
                height: 48,
                width: 48,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome To Acadeimx",
                  style: Styles.text14.copyWith(
                      color: AppColors.kPrimary, fontWeight: FontWeight.w700),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .47,
                  child: Text(
                    "Yousef Elzegheby",
                    style: Styles.text14.copyWith(
                        fontWeight: FontWeight.w400, color: AppColors.kPrimary),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    // textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/search.png'),
            ),
            const SizedBox(
              width: 16,
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/customtabbar');
              },
              child: Image.asset('assets/images/notification.png'),
            )
          ],
        ),
      ],
    );
  }
}
