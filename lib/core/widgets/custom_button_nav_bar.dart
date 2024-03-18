import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/Bookmark/presentation/view/bookmark.dart';
import 'package:graduation/features/home_view/presentation/view/home_view.dart';
import 'package:graduation/features/suggest_view/presentation/view/suggest_view.dart';
import 'package:graduation/features/profile_settings/view/profile.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:solar_icons/solar_icons.dart';

class CustomButonNavBar extends StatefulWidget {
  const CustomButonNavBar({super.key});

  @override
  State<CustomButonNavBar> createState() => _CustomButonNavBarState();
}

class _CustomButonNavBarState extends State<CustomButonNavBar> {
  List<Widget> pages = const [
    HomeView(),
    SuggestView(),
    BookmarkView(),
    Profile()
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        child: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 1,
            backgroundColor: AppColors.kPrimary,
            unselectedItemColor: Colors.white.withOpacity(.25),
            currentIndex: current,
            onTap: (val) {
              setState(() {
                current = val;
              });
            },
            fixedColor: Colors.white,
            selectedIconTheme:
                const IconThemeData(color: AppColors.kLightColor),
            items: const [
              BottomNavigationBarItem(
                  label: "Home", icon: Icon(SolarIconsBold.home)),
              BottomNavigationBarItem(
                  label: "Suggest", icon: Icon(Symbols.checkbook_rounded)),
              BottomNavigationBarItem(
                  label: "Bookmark", icon: Icon(Symbols.bookmark)),
              BottomNavigationBarItem(
                  label: "Profile", icon: Icon(SolarIconsBold.user)),
            ],
          ),
        ),
      ),
    );
  }
}
