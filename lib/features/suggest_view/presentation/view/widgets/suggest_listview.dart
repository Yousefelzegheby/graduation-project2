import 'package:flutter/cupertino.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/Listview_item.dart';

class SuggestListview extends StatelessWidget {
  const SuggestListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const ListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(),
        itemCount: 10);
  }
}
