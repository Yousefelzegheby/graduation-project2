import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/Bookmark/presentation/view/bookmark.dart';
import 'package:graduation/features/home_view/presentation/view/home_view.dart';
import 'package:graduation/features/login&registerview/presntation/manager/login_cubit/login_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/manager/cubit/recomended_course_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/manager/manual/manual_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/manager/suggest/suggest_cubit.dart';
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
  String? token;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LoginCubitState>(
      listener: (context, state) {
        token = BlocProvider.of<LogInCubit>(context).allproduct[0].accessToken!;
      },
      builder: (context, state) {
        token = BlocProvider.of<LogInCubit>(context).allproduct[0].accessToken!;
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
                    print(val);
                    if (val == 1) {
                      BlocProvider.of<SuggestCubit>(context)
                          .suggestFirist(token: token!);
                      BlocProvider.of<RecomendedCourseCubit>(context)
                          .recommendedfunction(token: token!);
                    } else {
                      BlocProvider.of<ManualCubit>(context).course.clear();
                    }
                  });
                },
                fixedColor: Colors.white,
                selectedIconTheme:
                    const IconThemeData(color: AppColors.kLightColor),
                items: const [
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(SolarIconsBold.home),
                  ),
                  BottomNavigationBarItem(
                    label: "Suggest",
                    icon: (Icon(Symbols.checkbook_rounded)),
                  ),
                  BottomNavigationBarItem(
                      label: "Bookmark", icon: Icon(Symbols.bookmark)),
                  BottomNavigationBarItem(
                      label: "Profile", icon: Icon(SolarIconsBold.user)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
