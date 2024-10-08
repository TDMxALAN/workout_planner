import 'package:flutter/material.dart';
import 'package:workout_planner/constant/colors.dart';

class EquipmentCard extends StatelessWidget {
  final String equipmentName;
  final String equipmentDiscription;
  final String equipmentImage;
  final int numberOfMins;
  final double numberOfBurn;
  const EquipmentCard(
      {super.key,
      required this.equipmentName,
      required this.equipmentDiscription,
      required this.equipmentImage,
      required this.numberOfMins,
      required this.numberOfBurn});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF5F5F5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              equipmentName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  equipmentImage,
                  fit: BoxFit.cover,
                  width: 100,
                ),
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${numberOfMins.toString()} mins of workout",
                      style: TextStyle(
                        color: kMainPinkColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${numberOfBurn.toString()} of Calories burned",
                      style: TextStyle(
                        color: kMainPinkColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              equipmentDiscription,
              style: TextStyle(
                color: kMainBlack,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
