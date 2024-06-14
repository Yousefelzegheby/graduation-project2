import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/auto_suggest_sec2.dart';

class AutoSuggestSec1 extends StatelessWidget {
  const AutoSuggestSec1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Firist Course',
          style: Styles.text16.copyWith(
            fontWeight: FontWeight.w500,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          'D/ Yousef Elzegheby',
          style:
              Styles.text14PrimaryColor.copyWith(fontWeight: FontWeight.w400),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 7,
        ),
        const AutoSuggestSec2(),
      ],
    );
  }
}
