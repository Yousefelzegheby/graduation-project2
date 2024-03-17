import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';

class MentorsBody extends StatelessWidget {
  const MentorsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/Dr.ahmed3.png",
                  scale: 4,
                ),
                const SizedBox(width: 10),
                const Column(
                  children: [
                    Text("Dr. Ahmed",
                        style: TextStyle(
                          color: AppColors.kPrimary,
                          fontFamily: 'Poppins-Bold.ttf',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("Design Expert",
                        style: TextStyle(
                          color: AppColors.kGray,
                          fontFamily: 'Poppins-Regular.ttf',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                IconButton(
                  // alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(left: 160),
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage("assets/images/chats.png"),
                    color: AppColors.kPrimary,
                    size: 22,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
