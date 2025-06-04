import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/data/equipment_data.dart';
import 'package:workout_planner/data/exercise_data.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/pages/exercise_detailes.dart';
import 'package:workout_planner/widgets/exercise_card.dart';
import 'package:workout_planner/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //date formatters
  final DateFormat formetter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //usre data
  final userData = user;

  //exercise and equipment
  final exerciseList = ExerciesData().exerciseList;
  final equipmentList = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formetter.format(now);
    String formatterDay = dayFormat.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $formatterDay",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kSubtitleColor,
                  ),
                ),
                Text(
                  userData.fullName,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProgressCard(
                  progressValue: 0.4,
                  total: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Today's Activity",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailes(
                              exerciseTitle: "Warmup",
                              exerciseDescription:
                                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                              exerciseList: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: const ExerciseCard(
                        title: "Warmup",
                        imageUrl:
                            "assets/images/exercises/treadmill_2382679.png",
                        description: "see more",
                      ),
                    ),
                    const ExerciseCard(
                      title: "Equipment ",
                      imageUrl:
                          "assets/images/equipments/bench-press_7922198.png",
                      description: "see more",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                      title: "Exercise",
                      imageUrl: "assets/images/exercises/treadmill_2382679.png",
                      description: "see more",
                    ),
                    ExerciseCard(
                      title: "Stretching",
                      imageUrl: "assets/images/exercises/treadmill_2382679.png",
                      description: "see more",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
