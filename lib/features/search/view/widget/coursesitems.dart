import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';

class coursesitemwidget extends StatefulWidget {
  const coursesitemwidget({super.key});

  @override
  State<coursesitemwidget> createState() => _coursesitemwidgetState();
}

class _coursesitemwidgetState extends State<coursesitemwidget> {
  bool isBookmark = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .4,
          decoration: const BoxDecoration(
              color: Color(0xffDBE3E8),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/image course.png'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'UI&UX',
                          style: Styles.textstyle16.copyWith(
                            color: AppColors.kPrimary,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '1h. 15min',
                          style: Styles.text14.copyWith(
                              color: AppColors.kGray,
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(left: 60),
                    onPressed: () {
                      setState(() {
                        isBookmark = !isBookmark;
                      });
                    },
                    icon: Icon(
                      isBookmark ? Icons.bookmark : Icons.bookmark_border,
                    ),
                    color: AppColors.kPrimary,
                    iconSize: 22,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
