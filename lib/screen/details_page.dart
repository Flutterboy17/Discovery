import 'package:discovery/model/animal_model.dart';
import 'package:discovery/utils/app_assets.dart';
import 'package:discovery/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_bars.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.animalModel});

  final AnimalModel animalModel;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.kGradient1Color,
            AppColors.kGradient2Color,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 2.8,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.kGradient3Color,
                      AppColors.kGradient4Color,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  )),
            ),
          ),
          DetailsTopBar(),
          Positioned(
              top: 40,
              right: 24,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.kMainColor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: AppColors.kMainColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )),
          Positioned(
              bottom: 30,
              right: 24,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                      child: Image.asset(
                    IconsAssets.leftArrow,
                    height: 30,
                    width: 30,
                    color: AppColors.kMainColor,
                  )),
                ),
              )),
          Positioned(
              bottom: 30,
              left: 24,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 18),
                decoration: BoxDecoration(
                    color: AppColors.kMainColor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                    child: Text(
                  "Donate",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.kMainColor,
                      fontSize: 18),
                )),
              )),
          Positioned(
            top: 180,
            left: 24,
            child: Container(
              width: 180,
              height: 300,
              decoration: BoxDecoration(
                color: AppColors.kMainColor.withOpacity(.2),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150),
                ),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(
                  30,
                  40,
                  30,
                  40,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150),
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  ),
                  border: Border.all(width: 2, color: AppColors.kPrimaryColor),
                ),
              ),
            ),
          ),
          Positioned(
              left: 24,
              bottom: 320,
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 6, backgroundColor: AppColors.kPrimaryColor),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.animalModel.name,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kMainColor),
                  ),
                ],
              )),
          Positioned(
              left: 24,
              bottom: 170,
              right: 160,
              child: Text(
                widget.animalModel.description,
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: AppColors.kMainColor),
              )),
          Positioned(
            top: 80,
            child: FittedBox(
              child: Hero(
                tag: widget.animalModel.name,
                child: Image.asset(
                  widget.animalModel.imageUrl,
                  height: 500,
                  width: 500,
                  // fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
