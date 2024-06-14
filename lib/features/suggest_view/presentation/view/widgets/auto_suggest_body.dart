import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/button_suggest.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/listview_auto_suggest.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/suggest_listview.dart';

class AutoSuggestBody extends StatelessWidget {
  const AutoSuggestBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            const AutoSuggestListview(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonSuggest(
                    textButton: 'Save',
                    textColor: AppColors.kLightColor,
                    backColor: AppColors.kLightColor,
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ButtonSuggest(
                    textColor: AppColors.kDarkColor,
                    textButton: 'Edit',
                    backColor: AppColors.kLightColor,
                    onTap: () {
                      GoRouter.of(context).push('/editsugest');
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ))
      ],
    );
  }
}
