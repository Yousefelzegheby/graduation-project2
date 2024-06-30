import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/login&registerview/presntation/view/login-view.dart';
import 'package:graduation/features/sign_up_view/presentation/views/sign_up_view.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/Suggest_view_body.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/auto_suggest_body.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/listview_auto_suggest.dart';

class SuggestView extends StatelessWidget {
  const SuggestView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(left: 24),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.kPrimary,
              )),
          title: Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .23),
            child: Text(
              'Suggest',
              style: Styles.textstyle18.copyWith(
                  color: AppColors.kPrimary, fontWeight: FontWeight.w600),
            ),
          ),
          bottom: const TabBar(
            labelStyle: TextStyle(
              fontFamily: 'Poppins-Bold.ttf',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            tabs: [
              Tab(text: "Recommended Courses"),
              Tab(text: "Manual Suggest")
            ],
            indicatorColor: AppColors.kPrimary,
            labelColor: AppColors.kPrimary,
            unselectedLabelColor: AppColors.kGray,
          ),
        ),
        body: const TabBarView(children: [
          AutoSuggestBody(),
          SuggestManualViewBody(),
        ]),
      ),
    );
  }
}
