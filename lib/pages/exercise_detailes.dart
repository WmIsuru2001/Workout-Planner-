import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/consant_values.dart';
import 'package:workout_planner/models/exercise_models.dart';
import 'package:workout_planner/widgets/exercise_card.dart';

class ExerciseDetailes extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseDescription;
  final List<Exercise> exerciseList;
  const ExerciseDetailes(
      {super.key,
      required this.exerciseTitle,
      required this.exerciseDescription,
      required this.exerciseList});

  @override
  State<ExerciseDetailes> createState() => _ExerciseDetailesState();
}

class _ExerciseDetailesState extends State<ExerciseDetailes> {
  //date formatters
  final DateFormat formetter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formetter.format(now);
    String formatterDay = dayFormat.format(now);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
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
                widget.exerciseTitle,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: kMainBlackColor,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                Text(
                  widget.exerciseDescription,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                //grid view

                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                  ),
                  itemCount: widget.exerciseList.length,
                  itemBuilder: (context, index) {
                    Exercise exercise = widget.exerciseList[index];
                    return ExerciseCard(
                        title: exercise.exerciseName,
                        imageUrl: exercise.exerciseImageUrl,
                        description: "${exercise.noOfMinuites} of Workout");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
