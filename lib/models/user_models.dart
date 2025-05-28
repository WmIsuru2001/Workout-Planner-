import 'package:workout_planner/models/equipment_models.dart';
import 'package:workout_planner/models/exercise_models.dart';

class User {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totalExerciseCompleted = 0;
  int totalEquipmentsHandOvered = 0;

  final List<Exercise> exerciseList;
  final List<Equipments> equipmentList;

  final List<Exercise> favExerciseList;
  final List<Equipments> favEquipmentList;

  User(
      {required this.userId,
      required this.fullName,
      required this.gender,
      required this.address,
      required this.age,
      required this.description,
      required this.exerciseList,
      required this.equipmentList,
      required this.favExerciseList,
      required this.favEquipmentList});
}
