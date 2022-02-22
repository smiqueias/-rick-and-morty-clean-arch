import 'package:flutter/material.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_colors.dart';

class AppThemeData {
  static ThemeData appThemeData = ThemeData(
    primarySwatch: Colors.purple,
    // AppBar
    appBarTheme: AppBarTheme(
      color: AppColors.white,
      elevation: 4,
    ),
  );
}
