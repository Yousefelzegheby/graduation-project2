import 'package:flutter/material.dart';
import 'package:graduation/features/suggest_view/presentation/view/edit/widget/edit_suggest_item.dart';

class EditSuggestListView extends StatelessWidget {
  const EditSuggestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const EditSuggestItem(),
        separatorBuilder: (context, index) => const SizedBox(),
        itemCount: 10);
  }
}
