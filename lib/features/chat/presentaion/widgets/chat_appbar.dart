import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';

class ChatAppbar extends StatelessWidget {
  const ChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
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
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .26),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(555),
                      child: SizedBox(
                        height: 50,
                        child: Image.asset(
                          AssetsPath.avatar,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text("Fahd", style: Styles.textstyle20),
                  ],
                ),
              ),
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
