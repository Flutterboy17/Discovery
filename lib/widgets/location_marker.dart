import 'package:discovery/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LocationMarker extends StatelessWidget {
  const LocationMarker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: AppColors.kPrimaryColor.withOpacity(0.25),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AppColors.kPrimaryColor.withOpacity(0.5),
            width: 2,
          )),
      child: Container(
        margin: const EdgeInsets.all(20),
        width: 5,
        height: 5,
        decoration: BoxDecoration(
            color: AppColors.kPrimaryColor, borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}