import 'package:sad_app/common/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle commonCardHeaderTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Colors.white,
          letterSpacing: 0,
          fontWeight: FontWeight.w500,
        );
  }

  static TextStyle commonCardSubtitleTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white54,
        );
  }

  static TextStyle homePageCardText(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontFamily: 'Roboto',
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            letterSpacing: 0.14,
          );

  static TextStyle roboto25BoldWhite(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            letterSpacing: 0.14,
          );

  static TextStyle roboto15NormalWhite(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontFamily: 'Roboto',
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: AppColors.white,
            letterSpacing: 0.14,
          );
}
