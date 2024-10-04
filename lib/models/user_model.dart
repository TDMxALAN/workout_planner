import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';

class User {
  final String userID;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String discription;
  int totalExcercisesCompleted=0;
  int totalEquipmentsHandedOvered=0;

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
}
