import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';
import 'package:intl/intl.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:workout_planner/constant/colors.dart';
import 'package:workout_planner/constant/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/widgets/exercise_card.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  //userdata
  final userData = user;

  // String formattedDate = formatter.format(DateTime.now());
  String date = DateFormat('EEEE,MMMM,dd').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
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
                GradientAnimationText(
                  text: Text(
                    "Hello ,${userData.fullName}",
                    style: TextStyle(
                      fontSize: 20,
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
                  "Here are all your favorited Workouts",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kMainColor),
                ),
                //grid view
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                  ),
                  itemCount: user.FavouriteexerciseList.length,
                  itemBuilder: (context, index) {
                    Exercise exercise = user.FavouriteexerciseList[index];
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
      ),
    );
  }
}
