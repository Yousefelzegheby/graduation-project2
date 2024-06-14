import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/suggest_view/presentation/view/edit/widget/edit_suggest_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            padding: const EdgeInsets.only(left: 24),
            icon: const Icon(Icons.arrow_back_ios)),
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .23),
          child: Text(
            'Suggest',
            style: Styles.textstyle18.copyWith(
                color: AppColors.kPrimary, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: const EditSuggestBody(),
    );
  }
}
