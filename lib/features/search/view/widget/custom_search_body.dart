import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/search/view/widget/custom_menu_bottom.dart';

class custom_search_body extends StatefulWidget {
  const custom_search_body({super.key});

  @override
  State<custom_search_body> createState() => _custom_search_bodyState();
}

class _custom_search_bodyState extends State<custom_search_body> {
  int Index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, bottom: 8),
          child: Text(
            "Top Searches",
            style: TextStyle(
              color: AppColors.kPrimary,
              fontFamily: 'Poppins-Bold.ttf',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          children: [
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 0;
                  });
                },
                color: Index == 0 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'Python',
                textColor: Index == 0 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 0 ? 80 : 80),
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 1;
                  });
                },
                color: Index == 1 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'Java',
                textColor: Index == 1 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 1 ? 70 : 70),
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 2;
                  });
                },
                color: Index == 2 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'Excel',
                textColor: Index == 2 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 2 ? 70 : 70),
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 3;
                  });
                },
                color: Index == 3 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'Sql',
                textColor: Index == 3 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 3 ? 60 : 60),
          ],
        ),
        Row(
          children: [
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 4;
                  });
                },
                color: Index == 4 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'digital marketing',
                textColor: Index == 4 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 4 ? 150 : 150),
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 5;
                  });
                },
                color: Index == 5 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'React',
                textColor: Index == 5 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 5 ? 70 : 70),
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 6;
                  });
                },
                color: Index == 6 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'Aws',
                textColor: Index == 6 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 6 ? 70 : 70),
          ],
        ),
        Row(
          children: [
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 7;
                  });
                },
                color: Index == 7 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'Photoshop',
                textColor: Index == 7 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 7 ? 110 : 110),
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 8;
                  });
                },
                color: Index == 8 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'User Interface',
                textColor: Index == 8 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 8 ? 140 : 140),
            custom_menu_bottom(
                onTap: () {
                  setState(() {
                    Index = 9;
                  });
                },
                color: Index == 9 ? AppColors.kPrimary : AppColors.kbottom,
                text: 'C#',
                textColor: Index == 9 ? AppColors.kbottom : AppColors.kPrimary,
                width: Index == 9 ? 60 : 60),
          ],
        ),
      ],
    );
  }
}
