import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation/core/utiles/colors.dart';

class Notificationbody extends StatelessWidget {
  const Notificationbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              indent: 30,
              endIndent: 30,
            );
          },
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/Star 1.png",
                    scale: 4,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New Notification",
                            style: TextStyle(
                              color: AppColors.kPrimary,
                              fontFamily: 'Poppins-Bold.ttf',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            )),
                        Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            "New Material added for computer organization & archticture ",
                            style: TextStyle(
                              color: AppColors.kPrimary,
                              fontFamily: 'Poppins-Regular.ttf',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    "12:10 PM",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins-Regular.ttf',
                      color: AppColors.kPrimary,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
