import 'package:discovery/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../model/animal_model.dart';
import '../screen/details_page.dart';
import 'button_area.dart';
import 'map_area.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({super.key, required this.animal});
  final AnimalModel animal;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(animalModel: animal)));
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: mediaQuery.size.width * 0.55,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              color: AppColors.kMainColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: AppColors.kBgColor.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(5, 5)),
              ],
            ),
            child: Row(
              children: [
                MapArea(
                  color: animal.bgColor,
                  location: animal.location,
                  markerTop: animal.markerTop,
                  markerRight: animal.markerRight,
                  mapImage: animal.mapImage,
                ),
                const ButtonArea(),
              ],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: -90,
            child: Hero(
                tag: animal.name,
                child: Image.asset(
                  animal.imageUrl,
                  height: 400,
                  width: 400,
                )),
          ),
        ],
      ),
    );
  }
}
