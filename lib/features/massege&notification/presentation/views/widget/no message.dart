import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';

class NoMessage extends StatelessWidget {
  const NoMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/no message.png",
            scale: 3.5,
          ),
          const SizedBox(height: 10),
          const Text("No Messages",
              style: TextStyle(
                color: AppColors.kPrimary,
                fontFamily: 'Poppins-Bold.ttf',
                fontSize: 24,
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(height: 10),
          const Text(
              "Messages about your events and friends \n will show up here",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.kGray,
                fontFamily: 'Poppins-Regular.ttf',
                fontSize: 18,
                fontWeight: FontWeight.w400,
              )),
        ],
      )),
    );
  }
}
