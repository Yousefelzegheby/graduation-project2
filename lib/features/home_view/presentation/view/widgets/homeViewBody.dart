import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/HomeAppbar.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/listView_subject.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 40),
          child: HpmeAppbar(),
        ),
        SizedBox(
          height: 32,
        ),
        ListViewSubject()
      ],
    );
  }
}
