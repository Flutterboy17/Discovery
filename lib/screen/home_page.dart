import 'package:discovery/model/animal_model.dart';
import 'package:discovery/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/animal_card.dart';
import '../widgets/custom_bars.dart';
import '../widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AnimalModel> displayedAnimals = [];
  final List<String> categories = ["All", "Birds", "Fishes", "Mammals"];
  String selectedCategory = "All";

  @override
  void initState() {
    super.initState();
    updateDisplayedAnimals("All");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.kGradient1Color, AppColors.kGradient2Color],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              const SizedBox(height: 16),
              const Text(
                "Discover",
                style: TextStyle(
                    color: AppColors.kMainColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Protect our earth together.",
                style: TextStyle(
                    color: AppColors.kMainColor.withOpacity(.6),
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: categories.map((category) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = category;
                          updateDisplayedAnimals(category);
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            right: 24, top: 8, bottom: 8, left: 24),
                        decoration: BoxDecoration(
                          color: selectedCategory == category
                              ? AppColors.kPrimaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            category,
                            style: const TextStyle(
                              color: AppColors.kMainColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(child: buildAnimalList(displayedAnimals)),
              NavBar()
            ],
          ),
        ),
      ),
    );
  }

  ListView buildAnimalList(List<AnimalModel> animalList) {
    return ListView.builder(
        padding: const EdgeInsets.only(
          top: 8,
        ),
        itemCount: animalList.length,
        itemBuilder: (context, index) {
          return AnimalCard(
            animal: animalList[index],
          );
        });
  }

  void updateDisplayedAnimals(String category) {
    if (category == "All") {
      setState(() {
        displayedAnimals = birdData + fishData + mammalData;
      });
    } else if (category == "Birds") {
      setState(() {
        displayedAnimals = birdData;
      });
    } else if (category == "Fishes") {
      setState(() {
        displayedAnimals = fishData;
      });
    } else if (category == "Mammals") {
      setState(() {
        displayedAnimals = mammalData;
      });
    }
  }
}
