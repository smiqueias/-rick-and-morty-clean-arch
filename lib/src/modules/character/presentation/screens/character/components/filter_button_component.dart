import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_colors.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_text_styles.dart';

class FilterButtonComponent extends StatelessWidget {
  final String label;
  final Function() onSelected;
  final bool enabled;
  const FilterButtonComponent({Key? key, required this.label, required this.onSelected, required this.enabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelected,
      child: Container(
        height: 40.h,
        width: 94.w,
        decoration: BoxDecoration(
          color: enabled ? AppColors.black : AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: Text(
            label,
            style: AppTextStyles.subTitle2.apply(color: enabled ? AppColors.white : AppColors.gray7),
          ),
        ),
      ),
    );
  }
}
