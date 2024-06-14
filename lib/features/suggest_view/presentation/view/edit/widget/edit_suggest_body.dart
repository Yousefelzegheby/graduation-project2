import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/features/suggest_view/presentation/view/edit/widget/edit_suggest_listview.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/button_suggest.dart';

class EditSuggestBody extends StatelessWidget {
  const EditSuggestBody({super.key});

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
            const EditSuggestListView(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonSuggest(
                    textButton: 'Save',
                    backColor: AppColors.kPrimary,
                    textColor: AppColors.kLightColor,
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
