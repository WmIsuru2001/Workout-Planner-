import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/consant_values.dart';
import 'package:workout_planner/models/equipment_models.dart';
import 'package:workout_planner/widgets/equipment_card.dart';

class EquipmentDetailsPage extends StatefulWidget {
  final String equipmentTitle;
  final String equipmentDescription;
  final List<Equipments> equipmentList;
  const EquipmentDetailsPage(
      {super.key,
      required this.equipmentTitle,
      required this.equipmentDescription,
      required this.equipmentList});

  @override
  State<EquipmentDetailsPage> createState() => _EquipmentDetailsPageState();
}

class _EquipmentDetailsPageState extends State<EquipmentDetailsPage> {
  //date formatters
  final DateFormat formetter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formetter.format(now);
    String formatterDay = dayFormat.format(now);
    return Scaffold(
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
              widget.equipmentTitle,
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
                widget.equipmentDescription,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: kMainBlackColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //Grid
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                    childAspectRatio: 3 / 2,
                  ),
                  itemCount: widget.equipmentList.length,
                  itemBuilder: (context, index) {
                    Equipments equipments = widget.equipmentList[index];
                    return EquipmentCard(
                        equipmentName: equipments.equipmentName,
                        equipmentDescription: equipments.equipmentDescription,
                        equipmentImageUrl: equipments.equipmentImageUrl,
                        noOfMinuites: equipments.noOfMinuites,
                        noOfCalaries: equipments.noOfCalaries);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
