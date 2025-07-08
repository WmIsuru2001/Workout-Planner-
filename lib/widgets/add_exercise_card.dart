import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/consant_values.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseTitle;
  final String ImageUrl;
  final int NumberofMinits;
  final void Function() toggleAddExercise;
  final void Function() toggleAddFavExercise;
  final bool isAdded;
  final bool isFavourites;
  const AddExerciseCard(
      {super.key,
      required this.exerciseTitle,
      required this.ImageUrl,
      required this.NumberofMinits,
      required this.toggleAddExercise,
      required this.isAdded,
      required this.toggleAddFavExercise,
      required this.isFavourites});

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kCardBgColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 1),
              blurRadius: 1,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Text(
              widget.exerciseTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Image.asset(
              widget.ImageUrl,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${widget.NumberofMinits.toString()} minits",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: kSubtitleColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kSubtitleColor.withOpacity(0.4),
                  ),
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          widget.toggleAddExercise();
                        },
                        icon: Icon(
                          widget.isAdded ? Icons.remove : Icons.add,
                          size: 30,
                          color: kMainDarlBlueColor,
                        )),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kSubtitleColor.withOpacity(0.4),
                  ),
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          widget.toggleAddFavExercise();
                        },
                        icon: Icon(
                          widget.isFavourites
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: 30,
                          color: kMainPinkColor,
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
