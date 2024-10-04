import 'package:workout_planner/models/exercise_model.dart';

class ExerciseData {
  final List<Exercise> exerciseList = [
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
    Exercise(
      exerciseName: "Plank",
      exerciseImage: "assets/images/exercises/dragging.png",
      numberOfMins: 30,
      id: 2,
      isCompleted: false,
    ),
    Exercise(
      exerciseName: "Jumping Jacks",
      exerciseImage: "assets/images/exercises/hunch_back.png",
      numberOfMins: 10,
      isCompleted: false,
      id: 3,
    ),
    Exercise(
      exerciseName: "Crunches",
      exerciseImage: "assets/images/exercises/treadmill-machine_men.png",
      numberOfMins: 15,
      id: 4,
      isCompleted: false,
    ),
    Exercise(
      exerciseName: "Lunges",
      exerciseImage: "assets/images/exercises/treadmill-machine_women.png",
      numberOfMins: 20,
      id: 5,
      isCompleted: false,
    ),
    Exercise(
      exerciseName: "Burpees",
      exerciseImage: "assets/images/exercises/triangle.png",
      numberOfMins: 25,
      id: 6,
      isCompleted: false,
    ),
    Exercise(
      exerciseName: "High Knees",
      exerciseImage: "assets/images/exercises/weightlifting.png",
      numberOfMins: 10,
      id: 7,
      isCompleted: false,
    ),
    Exercise(
      exerciseName: "Bicycle Crunches",
      exerciseImage: "assets/images/exercises/yoga.png",
      numberOfMins: 20,
      id: 8,
      isCompleted: false,
    ),
    Exercise(
      exerciseName: "Leg Raises",
      exerciseImage: "assets/images/exercises/triangle.png",
      numberOfMins: 15,
      id: 9,
      isCompleted: false,
    ),
  ];
}