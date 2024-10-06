import 'package:flutter/material.dart';
import 'package:workout_planner/constant/colors.dart';
import 'package:workout_planner/constant/responsive.dart';

class AddEquipmentCard extends StatefulWidget {
  final String title;
  final int time;
  final double cal;
  final String imageURL;
  final String description;
  final bool isAdded;
  final bool isFavourite;
  final void Function() toggleAddExercise;
  final void Function() toggleFavouriteExercise;
  const AddEquipmentCard({
    super.key,
    required this.title,
    required this.time,
    required this.cal,
    required this.imageURL,
    required this.description,
    required this.isAdded,
    required this.isFavourite,
    required this.toggleAddExercise,
    required this.toggleFavouriteExercise,
  });

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding / 2),
      width: double.infinity,
      //height: 300,
      decoration: BoxDecoration(
        //color: Color(0xffF5F5F5),
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: kMainBlack,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  widget.imageURL,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 230,
                      child: Text(
                        widget.description,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: kMainColor,
                        ),
                      ),
                    ),
                    Text(
                      "${widget.time.toString()} mins",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: kMainPinkColor.withOpacity(0.5),
                      ),
                    ),
                    Text(
                      "${widget.cal.toString()} cal burned",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: kMainPinkColor.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
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
