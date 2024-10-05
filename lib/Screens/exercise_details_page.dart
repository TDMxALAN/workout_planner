import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:workout_planner/constant/colors.dart';
import 'package:workout_planner/constant/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/widgets/exercise_card.dart';

class ExerciseDetailsPage extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseDiscription;
  final List<Exercise> exercises;

  const ExerciseDetailsPage(
      {super.key,
      required this.exerciseTitle,
      required this.exerciseDiscription,
      required this.exercises});

  @override
  State<ExerciseDetailsPage> createState() => _ExerciseDetailsPageState();
}

class _ExerciseDetailsPageState extends State<ExerciseDetailsPage> {
  //date and time Formatters
  final DateFormat formatter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //userdata
  final userData = user;

  @override
  Widget build(BuildContext context) {
    String date = DateFormat('EEEE , MMMM dd').format(DateTime.now());
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              date,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              colors: [
                Colors.grey,
                Colors.black,
                Colors.lightBlue,
              ],
            ),
            GradientText(
              widget.exerciseTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              colors: const [
                Colors.red,
                Colors.green,
                Colors.amber,
              ],
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
                widget.exerciseDiscription,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: kMainBlack,
                ),
              ),
              SizedBox(height: 20),

              //grid view
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding,
                ),
                itemCount: widget.exercises.length,
                itemBuilder: (context, index) {
                  Exercise exercise = widget.exercises[index];
                  return ExerciseCard(
                    title: exercise.exerciseName,
                    imageURL: exercise.exerciseImage,
                    discription: "${exercise.numberOfMins} mins of workout",
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
