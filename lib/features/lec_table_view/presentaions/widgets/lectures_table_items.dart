import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';

// ignore: must_be_immutable
class LecturestableItemWidget extends StatelessWidget {
  const LecturestableItemWidget({super.key, required this.title, this.onTap});
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.kPrimary, // border color
                          width: 1, // border width
                        ),
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xffE7ECF0),
                      ),
                      height: 41,
                      width: 41,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(AssetsPath.itemLecTables),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Styles.text16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "1 Page",
                            style: Styles.texthint11,
                          ),
                          Container(
                            height: 2,
                            width: 2,
                            margin: const EdgeInsets.only(
                              left: 4,
                              top: 8,
                              bottom: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                1,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              "354 KB",
                              style: Styles.texthint11,
                            ),
                          ),
                          Container(
                            height: 2,
                            width: 2,
                            margin: const EdgeInsets.only(
                              left: 4,
                              top: 8,
                              bottom: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                1,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Text(
                              "PDF",
                              style: Styles.texthint11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              padding: const EdgeInsets.only(bottom: 12),
              onPressed: () {},
              icon: Image.asset(AssetsPath.itemLecTablesColumn))
        ],
      ),
    );
  }
}
