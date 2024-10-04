import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:workout_planner/constant/colors.dart';
import 'package:workout_planner/constant/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/widgets/equipment_card.dart';

class EquipmentsPage extends StatefulWidget {
  final String equipmentTitle;
  final String equipmentDescription;
  final List<Equipment> equipmentList;

  const EquipmentsPage(
      {super.key,
      required this.equipmentTitle,
      required this.equipmentDescription,
      required this.equipmentList});

  @override
  State<EquipmentsPage> createState() => _EquipmentsPageState();
}

class _EquipmentsPageState extends State<EquipmentsPage> {
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
              widget.equipmentTitle,
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
                widget.equipmentDescription,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: kMainBlack),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: false,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding,
                ),
                itemCount: widget.equipmentList.length,
                itemBuilder: (context, index) {
                  Equipment equipment = widget.equipmentList[index];
                  return EquipmentCard(
                    equipmentName: equipment.equipmentName,
                    equipmentDiscription: equipment.equipmentDiscription,
                    equipmentImage: equipment.equipmentImage,
                    numberOfMins: equipment.numberOfMins,
                    numberOfBurn: equipment.numberOfBurn,
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
