import 'package:flutter/material.dart';
import 'package:workout_planner/constant/colors.dart';

class ExerciseCard extends StatelessWidget {
  final String title;
  final String imageURL;
  final String discription;
  const ExerciseCard(
      {super.key,
      required this.title,
      required this.imageURL,
      required this.discription});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.46,
      decoration: BoxDecoration(
        color: Color.fromARGB(115, 235, 224, 224),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              imageURL,
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              discription,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: kMainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
