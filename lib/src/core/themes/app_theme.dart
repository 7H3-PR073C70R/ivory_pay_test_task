import 'package:flutter/material.dart';
import 'package:ivory_pay_test_task/src/core/constants/app_colors.dart';
import 'package:ivory_pay_test_task/src/core/extensions/num_extension.dart';
import 'package:ivory_pay_test_task/src/gen/fonts.gen.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        fontFamily: FontFamily.bricolageGrotesque,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 32.fontSize,
            fontWeight: FontWeight.w700,
            color: AppColors.kcText,
          ),
          bodyMedium: TextStyle(
            fontSize: 14.fontSize,
            fontWeight: FontWeight.w400,
            fontFamily: FontFamily.nunitoSans,
          ),
        ),
      );
}
