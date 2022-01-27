import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_colors.dart';

class AppTextStyles {
  final headline5 = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );
  final headline6 = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  final subTitle1 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );
  final subTitle2 = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  final body1 = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
  final body2 = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.gray1,
  );
  final button = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.gray6,
  );

  final buttonIndigo = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.indigo,
  );

  final caption = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.gray7,
  );

  final captionIndigo = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.indigo,
  );

  final captionGray1 = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.gray1,
  );

  final overline = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.normal,
  );
}
