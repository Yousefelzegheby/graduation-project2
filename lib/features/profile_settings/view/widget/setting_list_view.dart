import 'package:flutter/material.dart';
import 'package:graduation/features/profile_settings/data/models/settingsModels.dart';
import 'package:graduation/features/profile_settings/view/widget/ItemAccountSetting.dart';

class SetingListView extends StatelessWidget {
  const SetingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      separatorBuilder: (context, index) => const SizedBox(height: 24),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: SettingsItems.list.length,
      itemBuilder: (context, index) {
        return ItemAccountSetting(
          settingModel: SettingsItems.list[index],
        );
      },
    );
  }
}
