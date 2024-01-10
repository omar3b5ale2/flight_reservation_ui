import 'package:flutter/material.dart';
import 'package:first_day_100_ui_challenge_master/core/utils/helper/colors_helper.dart';

abstract class StyleHelper {
  static const TextStyle textStyle24w800 =
      TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800);
  static const TextStyle textStyle14w500 =
      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);
  static const TextStyle textStyle22Colorful =
      TextStyle(fontSize: 22.0, color: ColorsHelper.pinkyOrangeColor);
  static const TextStyle textStyle15Colorful =
      TextStyle(fontSize: 15.0, color: ColorsHelper.darkPinkyOrangeColor);
}
