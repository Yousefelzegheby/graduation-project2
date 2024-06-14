import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/suggest_view/presentation/manager/suggest/suggest_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/listview_item_sec2.dart';

class ListViewItemSec1 extends StatelessWidget {
  const ListViewItemSec1(
      {super.key,
      required this.numberStudent,
      required this.numbreHour,
      required this.drName,
      required this.courseName});
  final String numberStudent;
  final String numbreHour;
  final String drName;
  final String courseName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 145,
          child: Text(
            courseName,
            style: Styles.text16.copyWith(
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          drName,
          style:
              Styles.text14PrimaryColor.copyWith(fontWeight: FontWeight.w400),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 7,
        ),
        ListViewItemSec2(
          numberStudent: numberStudent,
          numbreHour: numbreHour,
        )
      ],
    );
  }
}
