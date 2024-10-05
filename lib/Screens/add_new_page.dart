import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';
import 'package:workout_planner/constant/colors.dart';
import 'package:workout_planner/constant/responsive.dart';
import 'package:workout_planner/data/exercise_data.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/widgets/add_exercise_card.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  final userdata = user;
  final exerciseList = ExerciseData().exerciseList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientAnimationText(
                  text: Text(
                    "Hello ,${userdata.fullName}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  colors: [
                    Colors.blue,
                    Colors.green,
                    Colors.yellow,
                    Colors.red,
                  ],
                  duration: Duration(seconds: 10),
                ),
                SizedBox(height: 15),
                Text(
                  "Lets Add Some Workouts and Equipment for today!",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kMainColor),
                ),
                SizedBox(height: 35),
                Text(
                  "All Exercises",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: kMainBlack),
                ),
                SizedBox(height: 10),

                //ListView
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exerciseList.length,
                    itemBuilder: (context, index) {
                      Exercise exercise = exerciseList[index];
                      return AddExerciseCard(
                        exerciseTitle: exercise.exerciseName,
                        imageURL: exercise.exerciseImage,
                        numberOfMins: exercise.numberOfMins,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
