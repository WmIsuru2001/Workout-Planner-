import 'package:workout_planner/models/equipment_models.dart';
import 'package:workout_planner/models/exercise_models.dart';
import 'package:workout_planner/models/user_models.dart';

User user = User(
  userId: "1234",
  fullName: "Isuru Sandee",
  gender: "Male",
  address: "neriyawa,kumbukgete",
  age: 24,
  description: "Fitness enthusiast",
  exerciseList: [
    Exercise(
      id: 0,
      exerciseName: "Push-Ups",
      exerciseImageUrl: "assets/images/exercises/treadmill_2382679.png",
      noOfMinuites: 10,
      completed: false,
    ),
    Exercise(
      id: 1,
      exerciseName: "Push-Ups",
      exerciseImageUrl: "assets/images/exercises/treadmill_2382679.png",
      noOfMinuites: 10,
      completed: false,
    ),
  ],
  equipmentList: [
    Equipments(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImageUrl: "assets/images/equipments/bench-press_7922198.png",
      noOfMinuites: 5,
      noOfCalaries: 2,
      handOvered: false,
    ),
    Equipments(
      id: 1,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImageUrl: "assets/images/equipments/bench-press_7922198.png",
      noOfMinuites: 5,
      noOfCalaries: 2,
      handOvered: false,
    ),
  ],
  favExerciseList: [
    Exercise(
      id: 0,
      exerciseName: "Push-Ups",
      exerciseImageUrl: "assets/images/exercises/treadmill_2382679.png",
      noOfMinuites: 10,
      completed: false,
    ),
  ],
  favEquipmentList: [
    Equipments(
      id: 1,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImageUrl: "assets/images/equipments/bench-press_7922198.png",
      noOfMinuites: 5,
      noOfCalaries: 2,
      handOvered: false,
    ),
  ],
);
