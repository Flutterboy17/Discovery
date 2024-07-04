import 'package:discovery/utils/app_assets.dart';
import 'package:discovery/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
         IconsAssets.menu,
          height: 25,
          width: 25,
          color: AppColors.kMainColor
        ),
        Image.asset(
        IconsAssets.search,
          height: 25,
          width: 25,
          color: AppColors.kMainColor
        ),
      ],
    );
  }
}


class DetailsTopBar extends StatelessWidget {
  const DetailsTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 50,
        left: 24,
        child: Row(children: [
          Container(
            width: 24,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
             color: AppColors.kMainColor
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.kMainColor.withOpacity(.5),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.kMainColor.withOpacity(.5),
            ),
          ),
        ]));
  }
}
