import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';

class User {
  final String userID;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String discription;
  int totalExcercisesCompleted = 0;
  int totalEquipmentsHandedOvered = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;

  final List<Exercise> FavouriteexerciseList;
  final List<Equipment> FavouriteequipmentList;

  User({
    required this.userID,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.discription,
    required this.exerciseList,
    required this.equipmentList,
    required this.FavouriteexerciseList,
    required this.FavouriteequipmentList,
  });

  //methods

  //methode to add new exercise to list
  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  //method to remove the exercise from the exercise list
  void removeExercise(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  //methode to add new exercise to list
  void addExercise2(Exercise exercise) {
    FavouriteexerciseList.add(exercise);
  }

  //method to remove the exercise from the exercise list
  void removeExercise2(Exercise exercise) {
    FavouriteexerciseList.remove(exercise);
  }

  //methode to add new exercise to list
  void addEquipment(Equipment equipment) {
    equipmentList.add(equipment);
  }

  //method to remove the exercise from the exercise list
  void removeEquipment(Equipment equipment) {
    equipmentList.remove(equipment);
  }

  //methode to add new exercise to list
  void addEquipment2(Equipment equipment) {
    FavouriteequipmentList.add(equipment);
  }

  //method to remove the exercise from the exercise list
  void removeEquipment2(Equipment equipment) {
    FavouriteequipmentList.remove(equipment);
  }
}
