import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class EquipmentCard extends StatelessWidget {
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinuites;
  final double noOfCalaries;
  const EquipmentCard(
      {super.key,
      required this.equipmentName,
      required this.equipmentDescription,
      required this.equipmentImageUrl,
      required this.noOfMinuites,
      required this.noOfCalaries});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kCardBgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              equipmentName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  equipmentImageUrl,
                  fit: BoxFit.cover,
                  width: 100,
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${noOfMinuites.toString()} of Workout.",
                      style: const TextStyle(
                          color: kSubPinkColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${noOfCalaries.toString()} Burned Calaries.",
                      style: const TextStyle(
                        color: kSubPinkColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              equipmentDescription,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kMainBlackColor),
            ),
          ],
        ),
      ),
    );
  }
}
