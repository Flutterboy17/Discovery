import 'package:discovery/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'location_marker.dart';

class MapArea extends StatelessWidget {
  const MapArea({
    super.key,
    required this.color,
    required this.location,
    required this.markerTop,
    required this.markerRight,
    required this.mapImage,
  });

  final Color color;
  final String location;
  final double markerTop;
  final double markerRight;
  final String mapImage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          image: DecorationImage(
            alignment: Alignment.center,
            colorFilter: ColorFilter.mode(
              AppColors.kBgColor.withOpacity(0.2),
              BlendMode.dstATop,
            ),
            fit: BoxFit.cover,
            image: AssetImage(mapImage),
          ),
        ),
        child: Stack(children: [
          Positioned(
              top: markerTop,
              right: markerRight,
              child: const LocationMarker()),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColors.kMainColor.withOpacity(.5),
                  size: 20,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  location,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      height: 1.2,
                      color: AppColors.kMainColor.withOpacity(.7)),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
