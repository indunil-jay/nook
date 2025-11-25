import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    suffixIconColor: TColors.secondary,
    prefixIconColor: TColors.secondary,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.dark),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.dark.withValues(alpha: 0.6)),
    errorStyle: const TextStyle().copyWith(fontSize: 12, color: TColors.error),
    floatingLabelStyle: const TextStyle(color: TColors.secondary),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: TColors.secondary),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: TColors.secondary),
    ),
    enabledBorder:  OutlineInputBorder(
      borderRadius:  BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.secondary),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: TColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: TColors.error),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: TColors.primary,
       errorMaxLines: 3,
    suffixIconColor: TColors.secondary,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.dark),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.dark.withValues(alpha: 0.6)),
    errorStyle: const TextStyle().copyWith(fontSize: 12, color: TColors.error),
    floatingLabelStyle: const TextStyle(color: TColors.primary),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: TColors.primary),
    ),
      errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: TColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: TColors.error),
    ),
      enabledBorder:  OutlineInputBorder(
      borderRadius:  BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: TColors.secondary),
    ),

  );
}
