import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/course_item.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/recommended_course_Item.dart';
import 'package:graduation/features/search/view/widget/coursesitems.dart';
import 'package:graduation/features/search/view/widget/custom_bookmark.dart';

class popular_search extends StatelessWidget {
  const popular_search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Popular Courses",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kPrimary,
                  fontFamily: 'Poppins-Bold.ttf',
                ),
              ),
              const SizedBox(
                width: 150,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => Container(
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width * .7,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.kGray,
                      offset: Offset(1, 1),
                      blurRadius: 4,
                      spreadRadius: 0,
                    )
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/Java.png',
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16, right: 24, bottom: 8, top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Core Java ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins-Bold.ttf',
                                  color: Colors.black,
                                ),
                              ),
                              Text('1h. 15min',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.kGray,
                                  )),
                            ],
                          ),
                        ),
                        custom_bookmark(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
