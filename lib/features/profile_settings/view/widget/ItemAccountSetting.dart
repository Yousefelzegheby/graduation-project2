import 'package:flutter/material.dart';

import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/styles.dart';
import 'package:graduation/features/profile_settings/data/models/settingsModels.dart';

class ItemAccountSetting extends StatelessWidget {
  const ItemAccountSetting({
    super.key,
    required this.settingModel,
  });
  final SettingModel settingModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(settingModel.imag),
            const SizedBox(width: 8),
            Text(
              settingModel.text,
              style: Styles.textstyle24.copyWith(
                  color: AppColors.kPrimary, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios,
                size: 24, color: AppColors.kPrimary))
      ],
    );
  }
}
