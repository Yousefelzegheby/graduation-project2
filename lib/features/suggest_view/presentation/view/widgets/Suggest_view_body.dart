import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/suggest_listview.dart';
import 'package:graduation/features/suggest_view/presentation/view/widgets/suggest_view_abbpar.dart';

class SuggestViewBody extends StatelessWidget {
  const SuggestViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SuggestAppbar(),
          Divider(),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Stack(
              children: [
                SuggestListview(),
                Positioned(
                  bottom: 15,
                  left: MediaQuery.of(context).size.width * .3,
                  child: Container(
                    width: 179,
                    height: 56,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: ShapeDecoration(
                      color: AppColors.kPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Auto Suggest',
                        style: Styles.textstyle16.copyWith(
                          color: AppColors.kLightColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
