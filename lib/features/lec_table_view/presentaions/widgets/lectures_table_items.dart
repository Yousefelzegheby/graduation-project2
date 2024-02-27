import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';

// ignore: must_be_immutable
class LecturestableItemWidget extends StatelessWidget {
  const LecturestableItemWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: SizedBox(
                    height: 40, width: 40, child: Image.asset(AssetsPath.logo)),
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
        ],
      ),
    );
  }
}
