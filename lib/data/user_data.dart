import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/models/user_model.dart';

User user = User(
  userID: "123456",
  fullName: "Netzee",
  gender: "male",
  address: "1234 , SLK",
  age: 17,
  discription: "fitness enthusiast",
  exerciseList: [
    Exercise(
      exerciseName: "Push-ups",
      exerciseImage: "assets/images/exercises/cobra.png",
      numberOfMins: 15,
      id: 0,
      isCompleted: false,
    ),
    Exercise(
      exerciseName: "Squats",
      exerciseImage: "assets/images/exercises/downward-facing.png",
      numberOfMins: 20,
      id: 1,
      isCompleted: false,
    ),
  ],
  equipmentList: [
    Equipment(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDiscription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImage: "assets/images/equipments/calendar.png",
      numberOfMins: 30,
      numberOfBurn: 2,
      isHandedOver: false,
    ),
  ],
  FavouriteexerciseList: [
    Exercise(
      exerciseName: "Squats",
      exerciseImage: "assets/images/exercises/downward-facing.png",
      numberOfMins: 20,
      id: 1,
      isCompleted: false,
    ),
  ],
  FavouriteequipmentList: [
    Equipment(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDiscription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImage: "assets/images/equipments/calendar.png",
      numberOfMins: 30,
      numberOfBurn: 2,
      isHandedOver: false,
    ),
  ],
);
