import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/HomeAppbar.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/body2.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 46),
          child: HpmeAppbar(),
        ),
        SizedBox(
          height: 16,
        ),
        Body2()
      ],
    );
  }
}
