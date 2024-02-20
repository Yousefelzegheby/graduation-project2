import 'package:flutter/material.dart';
import 'package:graduation/features/home_view/presentation/view/widgets/ListView_item_subject.dart';

class ListViewSubject extends StatelessWidget {
  const ListViewSubject({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: Padding(
        padding: EdgeInsets.zero,
        child: ListView.builder(
          itemBuilder: (index, context) => const ListViewItemSubject(),
          itemCount: 15,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
