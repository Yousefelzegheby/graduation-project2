import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/features/suggest_view/presentation/manager/suggest/suggest_cubit.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/listview_item_sec1.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.numberStudent,
    required this.numbreHour,
    required this.drName,
    required this.courseName,
    required this.image,
    required this.index,
    this.onPressed,
    this.width,
  });
  final String numberStudent;
  final String numbreHour;
  final String drName;
  final String courseName;
  final String image;
  final double? width;
  final int index;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFB5C4D0)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: SizedBox(
                width: 80,
                height: 80,
                child: Image.network('${AssetsPath.apiLink}$image'),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            ListViewItemSec1(
              numberStudent: numberStudent,
              numbreHour: numbreHour,
              drName: drName,
              courseName: courseName,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .13,
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  color: AppColors.kPrimary,
                  borderRadius: BorderRadius.circular(555)),
              child: IconButton(
                  padding: const EdgeInsets.only(right: 1),
                  icon: const Icon(
                    Icons.add,
                    color: AppColors.kLightColor,
                  ),
                  onPressed: onPressed),
            )
          ],
        ),
      ),
    );
  }
}
