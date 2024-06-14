import 'package:flutter/material.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/auto_suggest_item.dart';

class AutoSuggestListview extends StatelessWidget {
  const AutoSuggestListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const AutoSuggestItem(),
        separatorBuilder: (context, index) => const SizedBox(),
        itemCount: 10);
  }
}
