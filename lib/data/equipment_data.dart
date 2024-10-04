import 'package:workout_planner/models/equipment_model.dart';

class EquipmentData {
  final List<Equipment> equipmentList = [
    Equipment(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDiscription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImage: "assets/images/equipments/calendar.png",
      numberOfMins: 30,
      numberOfBurn: 2,
      isHandedOver: false,
    ),
    Equipment(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDiscription: "Elastic bands used for resistance exercises.",
      equipmentImage: "assets/images/equipments/checklist.png",
      numberOfMins: 20,
      isHandedOver: false,
      numberOfBurn: 15,
    ),
    Equipment(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDiscription: "A mat for practicing yoga and floor exercises.",
      equipmentImage: "assets/images/equipments/dumbbell.png",
      numberOfMins: 60,
      isHandedOver: false,
      numberOfBurn: 30,
    ),
    Equipment(
      id: 3,
      equipmentName: "Jump Rope",
      equipmentDiscription:
          "A rope used for cardiovascular exercises and coordination training.",
      equipmentImage: "assets/images/equipments/dumbbells.png",
      numberOfMins: 15,
      isHandedOver: false,
      numberOfBurn: 12,
    ),
    Equipment(
      id: 4,
      equipmentName: "Kettlebells",
      equipmentDiscription:
          "Weights with a handle used for strength, endurance, and flexibility training.",
      equipmentImage: "assets/images/equipments/facial-roller.png",
      numberOfMins: 45,
      isHandedOver: false,
      numberOfBurn: 25,
    ),
    Equipment(
      id: 5,
      equipmentName: "Exercise Ball",
      equipmentDiscription:
          "A large, inflatable ball used for core and stability exercises.",
      equipmentImage: "assets/images/equipments/stationary-bike.png",
      numberOfMins: 25,
      isHandedOver: false,
      numberOfBurn: 15,
    ),
    Equipment(
      id: 6,
      equipmentName: "Pull-up Bar",
      equipmentDiscription:
          "A bar mounted to a wall or doorframe for upper body strength exercises.",
      equipmentImage: "assets/images/equipments/treadmill.png",
      numberOfMins: 40,
      isHandedOver: false,
      numberOfBurn: 20,
    ),
    Equipment(
      id: 7,
      equipmentName: "Medicine Ball",
      equipmentDiscription:
          "A heavy ball used for strength and coordination exercises.",
      equipmentImage: "assets/images/equipments/facial-roller.png",
      numberOfMins: 35,
      isHandedOver: false,
      numberOfBurn: 18,
    ),
    Equipment(
      id: 8,
      equipmentName: "Bench",
      equipmentDiscription:
          "A stable surface for various strength training exercises.",
      equipmentImage: "assets/images/equipments/dumbbells.png",
      numberOfMins: 55,
      isHandedOver: false,
      numberOfBurn: 28,
    ),
    Equipment(
      id: 9,
      equipmentName: "Barbell",
      equipmentDiscription:
          "A long metal bar with weights attached to each end, used for resistance training.",
      equipmentImage: "assets/images/equipments/skipping-rope.png",
      numberOfMins: 50,
      isHandedOver: false,
      numberOfBurn: 27,
    ),
  ];
}