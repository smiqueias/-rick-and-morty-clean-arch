import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class CharacterShimmerLoadingView extends StatelessWidget {
  const CharacterShimmerLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 30.h,
        ),
        child: Shimmer.fromColors(
          child: GridView.builder(
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.w,
              childAspectRatio: 3 / 5,
              mainAxisSpacing: 20.w,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: AppColors.gray5,
                    width: 0.5,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 12.w)),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white,
        ),
      ),
    );
  }
}
