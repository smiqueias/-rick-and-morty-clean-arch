import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_colors.dart';

class AppTextStyles {
  static final headline5 = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );
  static final headline6 = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static final subTitle1 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );
  static final subTitle2 = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static final body1 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
  static final body2 = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.gray1,
  );
  static final button = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.gray6,
  );

  static final buttonIndigo = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.indigo,
  );

  static final caption = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.gray7,
  );

  static final captionIndigo = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.indigo,
  );

  static final captionGray1 = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.gray1,
  );

  static final overline = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.normal,
  );
}
