import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';

class MaterialCourseView extends StatelessWidget {
  const MaterialCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: AppColors.kPrimary,
            ),
          ),
          title: const Text(
            "Courses",
            style: Styles.text18Labeld,
          ),
          centerTitle: true,
          toolbarHeight: 88),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: AppColors.kPrimary,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // المفروض تخلي الحته دي ريسبونسيف
                    const Text(
                      "Computer Science Specialization",
                      style: Styles.text25,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "By D/ mohamed ahmed",
                      style: Styles.text14.copyWith(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset(
                              AssetsPath.clock,
                              color: const Color(0xffffffff),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "20 Houres",
                            style: Styles.text16.copyWith(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About this Specialization",
                      style: Styles.textstyle24
                          .copyWith(color: AppColors.kPrimary),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Computer science is the study of computation, information, and automation. Computer science spans theoretical disciplines (such as algorithms, theory of computation, and information theory) to applied disciplines (including the design and implementation of hardware and software).",
                      style: Styles.textstyle18.copyWith(
                          color: AppColors.kPrimary,
                          overflow: TextOverflow.fade,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      //  حاولت اخليه زيه معرفتش والله
      bottomNavigationBar: const RectangularButtonNavbar(),

      // body:,
    );
  }
}

class RectangularButtonNavbar extends StatelessWidget {
  const RectangularButtonNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white, // Set background color of navbar to white
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      AppColors.kPrimary, // Set background color to primary
                  fixedSize: const Size.fromHeight(56), // Set height to 56
                  elevation: 4, // Set elevation to 4 for black shadow
                ),
                onPressed: () {
                  GoRouter.of(context).push("/materilcourselectures");
                  // Handle button tap
                },
                child: Text(
                  'Get Started',
                  style: Styles.text16
                      .copyWith(color: Colors.white), // Text color white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
