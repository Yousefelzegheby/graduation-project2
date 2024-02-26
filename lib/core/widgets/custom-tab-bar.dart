import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
// import 'package:graduation/features/notification_view/presentation/view/message-view.dart';
// import 'package:graduation/features/notification_view/presentation/view/notification_view.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  // List<Widget> pages = const [MessageView(), NotificationView()];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(  
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kLightColor,
          leading: InkWell(onTap: () { GoRouter.of(context).push('/customnavbar');}, child: const Icon(Icons.arrow_back_ios, color: AppColors.kPrimary,)),
          title: const Center(
            child: Text("Notifications",
            style: TextStyle(
              color: AppColors.kPrimary,
              fontFamily: 'Poppins-Bold.ttf',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              
              
            ),),
          ),
          bottom: const TabBar(
          labelStyle: TextStyle(
            fontFamily: 'Poppins-Bold.ttf',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          tabs: [Tab(text: "Messages"), Tab(text: "Notifications")],
          indicatorColor: AppColors.kPrimary,
          labelColor: AppColors.kPrimary,
          unselectedLabelColor: AppColors.kGray,
        ),
        ),
      ),
    );
  }
}