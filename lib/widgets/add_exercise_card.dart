import 'package:flutter/material.dart';
import 'package:workout_planner/constant/colors.dart';
import 'package:workout_planner/constant/responsive.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseTitle;
  final String imageURL;
  final int numberOfMins;
  final bool isAdded;
  final bool isFavourite;
  final void Function() toggleAddExercise;
  final void Function() toggleFavouriteExercise;
  const AddExerciseCard(
      {super.key,
      required this.exerciseTitle,
      required this.imageURL,
      required this.numberOfMins,
      required this.toggleAddExercise,
      required this.isAdded,
      required this.isFavourite,
      required this.toggleFavouriteExercise});

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffF5F5F5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Text(
              widget.exerciseTitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              widget.imageURL,
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              "${widget.numberOfMins.toString()} minutes",
              style: TextStyle(
                fontSize: 16,
                color: kSubTitleColor,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kSubTitleColor.withOpacity(0.2),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        widget.toggleAddExercise();
                      },
                      icon: Icon(
                        widget.isAdded ? Icons.remove : Icons.add,
                        size: 30,
                        color: kMainDarkBlue,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kSubTitleColor.withOpacity(0.2),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        widget.toggleFavouriteExercise();
                      },
                      icon: Icon(
                        widget.isFavourite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 30,
                        color: kMainPinkColor,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
