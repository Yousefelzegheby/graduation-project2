import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/listview_auto_suggest.dart';

class AutoSuggestBody extends StatelessWidget {
  const AutoSuggestBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            AutoSuggestListview(),
            SizedBox(
              height: 8,
            )
          ],
        ))
      ],
    );
  }
}
