import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_colors.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_text_styles.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';

class GridCardsComponent extends StatelessWidget {
  final List<CharacterEntity> character;
  final int index;
  final ScrollController scrollController;

  const GridCardsComponent({Key? key, required this.character, required this.index, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      itemCount: index,
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
              Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: character[index].image,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
                        child: Text(
                          character[index].status,
                          style: AppTextStyles.caption,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Text(
                          character[index].name,
                          style: AppTextStyles.subTitle1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
