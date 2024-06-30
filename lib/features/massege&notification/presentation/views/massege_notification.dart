import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/massege&notification/presentation/views/message.dart';
import 'package:graduation/features/massege&notification/presentation/views/notification.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  // List<Widget> pages = const [MessageScreen(), NotificationScreen()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.kPrimary,
                )),
            title: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .15),
              child: Text("Notifications",
                  style:
                      Styles.textstyle24.copyWith(color: AppColors.kPrimary)),
            ),
          ),
          body: const NotificationScreen()),
    );
  }
}
