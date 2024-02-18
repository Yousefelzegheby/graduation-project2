import 'package:flutter/material.dart';
import 'package:graduation/features/profile_settings/view/widget/Section1Settings.dart';
import 'package:graduation/features/profile_settings/view/widget/Section2Settings.dart';
import 'package:graduation/features/profile_settings/view/widget/setting_list_view.dart';

class ProfileBodey extends StatelessWidget {
  const ProfileBodey({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Divider(
                height: 1,
              ),
              Section1Settings(),
              Divider(
                thickness: 2,
              ),
              Section2Settings(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SetingListView(),
        ),
      ],
    );
  }
}
