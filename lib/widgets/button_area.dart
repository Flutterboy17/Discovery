import 'package:discovery/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonArea extends StatelessWidget {
  const ButtonArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
                color: AppColors.kMainColor.withOpacity(.2),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
            child: const Icon(
              Icons.chevron_right,
              color: AppColors.kMainColor
            ),
          ),
        ],
      ),
    );
  }
}
