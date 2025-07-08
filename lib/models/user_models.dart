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

  //methoes

  //methode to add new exercise to the exercisList
  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  //methode to remove exercise
  void removeExercise(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  //methord to add fav exercis
  void addFavExercise(Exercise exercise) {
    favExerciseList.add(exercise);
  }

  //methord remove fav
  void removeFavExercise(Exercise exercise) {
    favExerciseList.remove(exercise);
  }
}
