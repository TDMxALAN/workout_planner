import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';
import 'package:intl/intl.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:workout_planner/Screens/equipments_page.dart';
import 'package:workout_planner/Screens/exercise_details_page.dart';
import 'package:workout_planner/constant/responsive.dart';
import 'package:workout_planner/data/equipment_data.dart';
import 'package:workout_planner/data/exercise_data.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/widgets/exercise_card.dart';
import 'package:workout_planner/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //date and time Formatters
  final DateFormat formatter = DateFormat('EEEE , MMMM dd');

  //userdata
  final userData = user;

  //exercise and equipment
  final exerciseList = ExerciseData().exerciseList;
  final equipmentList = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    // String formattedDate = formatter.format(DateTime.now());
    String date = DateFormat('EEEE,MMMM,dd').format(DateTime.now());

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
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
                const SizedBox(height: 20),
                const ProgressCard(
                  progressValue: 0.5,
                  total: 100,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Today’s Activity",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Warm Up",
                              exerciseDiscription:
                                  "Warmup is a method of preparing the body for exercise or sports by increasing the heart rate and warming the muscles. It is a simple exercise that helps to increase the blood flow to the muscles and prepare them for physical activity.",
                              exercises: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: const ExerciseCard(
                        title: "Warm Up",
                        imageURL: "assets/images/exercises/downward-facing.png",
                        discription: "see more...",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EquipmentsPage(
                              equipmentTitle: "Equipments",
                              equipmentDescription:
                                  "Equipments are the various tools, devices, or apparatuses used to perform specific tasks or activities. In different fields, they enable efficiency, safety, and precision, ranging from simple hand tools to complex machinery depending on the nature of the work or activity.",
                              equipmentList: equipmentList,
                            ),
                          ),
                        );
                      },
                      child: const ExerciseCard(
                        title: "Equipment",
                        imageURL: "assets/images/equipments/dumbbells2.png",
                        discription: "see more...",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Exercise",
                              exerciseDiscription:
                                  "Exercise is any physical activity that enhances or maintains physical fitness and overall health. It is often performed to improve strength, endurance, flexibility, and coordination, while also promoting mental well-being.",
                              exercises: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: const ExerciseCard(
                        title: "Exercise",
                        imageURL: "assets/images/exercises/dragging.png",
                        discription: "see more...",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Stretching",
                              exerciseDiscription:
                                  "Stretching is a physical activity that involves extending and flexing muscles to improve flexibility and range of motion. It helps reduce muscle stiffness, enhance circulation, and prepare the body for more intense physical activity, often serving as a warm-up or cool-down exercise.",
                              exercises: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: const ExerciseCard(
                        title: "Stretching",
                        imageURL: "assets/images/exercises/yoga.png",
                        discription: "see more...",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
