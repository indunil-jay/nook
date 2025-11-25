

import 'package:flutter/material.dart';
import 'package:nook/app/themes/widget_themes/appbar_theme.dart';
import 'package:nook/app/themes/widget_themes/elevated_button_theme.dart';
import 'package:nook/app/themes/widget_themes/outlined_button_theme.dart';
import 'package:nook/app/themes/widget_themes/text_field_theme.dart';
import 'package:nook/app/themes/widget_themes/text_theme.dart';

class  AppTheme {
  const AppTheme._();

 static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
