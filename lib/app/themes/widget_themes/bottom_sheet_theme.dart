

import 'package:flutter/material.dart';
import 'package:nook/app/constants/colors.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TColors.lightBackground,
    modalBackgroundColor: TColors.lightBackground,
    constraints: const BoxConstraints(minWidth: double.infinity ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16.0),
      ),
    ),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TColors.darkBackground,
    modalBackgroundColor: TColors.darkBackground,
    constraints: const BoxConstraints(minWidth: double.infinity ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16.0),
      ),
    ),
  );
}