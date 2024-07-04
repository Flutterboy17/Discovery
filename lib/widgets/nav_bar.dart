import 'package:discovery/utils/app_assets.dart';
import 'package:discovery/utils/app_colors.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 16, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(IconsAssets.bag,
              height: 30, width: 30, color: AppColors.kMainColor),
          Image.asset(IconsAssets.explore,
              height: 30, width: 30, color: AppColors.kMainColor),
          Container(
            height: 45,
            width: 45,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.kMainColor.withOpacity(.2)),
            child: Image.asset(IconsAssets.mail, color: AppColors.kMainColor),
          ),
        ],
      ),
    );
  }
}
