import 'package:flutter/material.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/ListView_item_subject.dart';

class ListViewSubject extends StatelessWidget {
  const ListViewSubject({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        itemBuilder: (context, index) => const ListViewItemSubject(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
