import 'package:flutter/material.dart';
import 'package:graduation/core/utiles/colors.dart';

abstract class Styles {
  static const textstyle20 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.normal);
  static const textstyle18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.normal);
  static const textstyle17 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static const textstyle24 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
  static const textstyle16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
  static const textstyle30 =
      TextStyle(fontSize: 30, fontWeight: FontWeight.normal);
  static const text32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );
  static const text14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static const text18Labeld = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.kPrimary);
  static const text14PrimaryColor = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.kPrimary);
  static const texthint11 = TextStyle(
      fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xffB5C4D0));

  static const text16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.kPrimary,
  );
  static const text18Hint = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xff8A8A8A),
  );
  static const text25 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: Color(0xffFFFFFF),
  );
}
