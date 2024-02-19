import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingModel {
  final String imag;
  final String text;

  SettingModel({required this.imag, required this.text});
}

// ================>>> UI
class SettingsItems {
  static List<SettingModel> list = [
    SettingModel(text: "Notifications", imag: 'assets/images/Vector.png'),
    SettingModel(text: "Appearance", imag: "assets/images/Frame 326.png"),
    SettingModel(text: "Help &Support", imag: 'assets/images/qu.png'),
    SettingModel(text: 'About', imag: 'assets/images/ph_note-light.png'),
    SettingModel(text: 'Privacy', imag: 'assets/images/qu!.png'),
    SettingModel(text: 'Rate in App Store', imag: 'assets/images/star.png'),
  ];
}
